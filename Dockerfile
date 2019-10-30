FROM ubuntu:18.04 
# Installing PostgresSQL
RUN apt update -y && apt install wget gnupg2 -y
RUN wget -O - https://debian.neo4j.org/neotechnology.gpg.key | apt-key add -
RUN echo 'deb https://debian.neo4j.org/repo stable/' | tee -a /etc/apt/sources.list.d/neo4j.list
RUN apt update -y && apt install postgresql postgresql-contrib openjdk-8-jdk neo4j -y 

CMD service postgresql start && neo4j start && bash
#Dependencies:

#stackexchange-dump-to-postgres
#java-baker
#CCFinder
#python3
#psycopg2
#numpy
#scipy
#pandas
#neo4j python driver
#matplotlib
