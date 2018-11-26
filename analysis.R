library(dplyr)
library(ggplot2)

#aggregrated file of goals scored per game every season
create_avg_file <- function(file){
  file%>%
  select(season, total_goal)%>%
  group_by(season)%>%
  summarize(Mean = mean(total_goal,na.rm = T))
}
avg_epl <- create_avg_file(epl_file)
avg_bun <- create_avg_file(bun_file)
avg_ita <- create_avg_file(ita_file)
avg_esp <- create_avg_file(esp_file)




avg_epl$league <- "English Premier League"
avg_bun$league <- "German Bundesliga"
avg_esp$league <- "Spanish La Liga"
avg_ita$league <- "Italian Seria A"

ggplot(data = rbind(avg_epl,avg_bun,avg_esp,avg_ita),aes(x=season, y=Mean, group = league,color = league))+
  geom_line(size=1.2)+ theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  scale_y_continuous(limits = c(2.1, 3.2)) + ggtitle("Average Goals Per Game Across Top European Leagues") +
  theme(plot.title = element_text(hjust = 0.5))+ylab("Average goals per match")
  
avg_file <- rbind(epl_file,bun_file,esp_file,ita_file)

epl_file%>%
  select(season, HomeTeam,FTHG)%>%
  filter(HomeTeam == "Man United")%>%
  group_by(season)%>%
  summarize(Mean_goals = mean(FTHG))

epl_file%>%
  select(season, AwayTeam,FTAG)%>%
  filter(AwayTeam == "Man United")%>%
  group_by(season)%>%
  summarize(Mean_goals = mean(FTAG))

#Analysing for the top teams across Europe
top_team <- function(team,color){
  home_goals <- avg_file%>%
    select(season, HomeTeam,FTHG)%>%
    filter(HomeTeam == team)%>%
    group_by(season)%>%
    summarize(Mean_goals = mean(FTHG))
  home_goals$where <- "home"
  home_goals$team <- team
  home_goals$color <- color
  
  away_goals <- avg_file%>%
    select(season, AwayTeam,FTAG)%>%
    filter(AwayTeam == team)%>%
    group_by(season)%>%
    summarize(Mean_goals = mean(FTAG))
  away_goals$where <- "away"
  away_goals$team <- team
  away_goals$color <- color
  
  rbind(home_goals,away_goals)
}

manutd <- top_team("Man United","red1")
mancity <- top_team("Man City","skyblue")
liverpool <- top_team("Liverpool","red3")
arsenal <- top_team("Arsenal","red4")
chelsea <- top_team("Chelsea","royalblue")

juventus <- top_team("Juventus","black")
Ac_milan <- top_team("Milan","firebrick1")
inter <- top_team("Inter","purple4")

barca <- top_team("Barcelona","mediumpurple2")
madrid <- top_team("Real Madrid","gray53")
atletico <- top_team("Ath Madrid","darkred")

munich <- top_team("Bayern Munich","brown")
dortmund <- top_team("Dortmund","yellow")



epl_top_tams <- rbind(manutd,mancity,liverpool,arsenal,chelsea)
bun_top_tams <- rbind(munich,dortmund)
esp_top_tams <- rbind(barca,madrid,atletico)
ita_top_tams <- rbind(juventus,Ac_milan,inter)


ggplot(data = (epl_top_tams),aes(x=season, y=Mean_goals, group = team,color = team))+
  stat_smooth(se=F,size = 1.2)+ theme(axis.text.x = element_text(angle = 90, hjust = 1))


ggplot(data = rbind(manutd,mancity,barca,madrid,munich,juventus),aes(x=season, y=Mean_goals, group = team,color = team))+
  stat_smooth(se=F,size = 1.2)+ theme(axis.text.x = element_text(angle = 90, hjust = 1))



ggplot()+
  stat_smooth(data = mancity, aes(x=season, y=Mean_goals, group = team,color = team),se=F,size = 1.2)+
  stat_smooth(data = manutd, aes(x=season, y=Mean_goals, group = team,color = team),se=F,size = 1.2)+
  scale_fill_manual(values=c("red1",
                             "blue1"),
                    labels = c("Man Utd", "Man City"))






