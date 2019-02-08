data <- read.csv("survey_696322_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: A
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "[Mir ist es wichtig mich bei der Arbeit fachlich weiterentwickeln zu können.] Inwiefern treffen folgende Aussagen zu Ihrer Karriereerwartung zu. Bitte kreuzen Sie die am ehesten zutreffende Antwort an."
data[, 2] <- factor(data[, 2], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[2] <- "Q001_SQ001"
# LimeSurvey Field type: A
data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "[Bei der Arbeitssuche achte ich darauf, eine Arbeit zu finden, mit der ich meine Ausbildung fortsetzen kann.] Inwiefern treffen folgende Aussagen zu Ihrer Karriereerwartung zu. Bitte kreuzen Sie die am ehesten zutreffende Antwort an."
data[, 3] <- factor(data[, 3], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[3] <- "Q001_SQ002"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "[Ein hohes Einkommen hat für mich einen großen Wert.] Inwiefern treffen folgende Aussagen zu Ihrer Karriereerwartung zu. Bitte kreuzen Sie die am ehesten zutreffende Antwort an."
data[, 4] <- factor(data[, 4], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[4] <- "Q001_SQ003"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "[Ich suche mir meinen Arbeitgeber nach dem Ansehen in der Bevölkerung aus.] Inwiefern treffen folgende Aussagen zu Ihrer Karriereerwartung zu. Bitte kreuzen Sie die am ehesten zutreffende Antwort an."
data[, 5] <- factor(data[, 5], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[5] <- "Q001_SQ004"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "[Bei der Arbeitssuche achte ich darauf, dass ich bei meinem Arbeitgeber gute Aufstiegsmöglichkeiten in der Zukunft habe.] Inwiefern treffen folgende Aussagen zu Ihrer Karriereerwartung zu. Bitte kreuzen Sie die am ehesten zutreffende Antwort an."
data[, 6] <- factor(data[, 6], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[6] <- "Q001_SQ005"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "Während wie vielen Semestern waren Sie regelmäßig (d.h. mehr als 10 Wochenstunden) in ihrer gesamten Studienzeit erwerbstätig?"
names(data)[7] <- "Q002"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "Wie viele Praktika haben Sie im Laufe Ihrer gesamten Studienzeit absolviert?"
names(data)[8] <- "Q003"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "[Meine Erziehungsberechtigten haben mich bei meiner Wohnsituation finanziell unterstützt.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 9] <- factor(data[, 9], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[9] <- "Q004_SQ001"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "[Meine Erziehungsberechtigten haben die anfallenden Kosten für Bücher und Lernmaterialien übernommen.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 10] <- factor(data[, 10], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[10] <- "Q004_SQ002"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[Meine Erziehungsberechtigten haben mich bei der Zahlung von Studienbeiträgen unterstützt.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 11] <- factor(data[, 11], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[11] <- "Q004_SQ003"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "[Meine Erziehungsberechtigten haben mich bei der Finanzierung von Reise- und Fahrtkosten während meines Studiums unterstützt.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 12] <- factor(data[, 12], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[12] <- "Q004_SQ004"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[Meine Erziehungsberechtigten haben meine anfallenden Kosten für Lebensmittel übernommen.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 13] <- factor(data[, 13], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[13] <- "Q004_SQ005"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[Meine Erziehungsberechtigten haben mir während des Studiums Taschengeld gegeben.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 14] <- factor(data[, 14], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[14] <- "Q004_SQ006"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[Meine Erziehungsberechtigten haben sich an meinen monatlichen Fixkosten wie Handy- & Internetgebühren beteiligt.] Inwiefern treffen folgende Aussagen zum Ausmaß der Unterstützung Ihrer Erziehungsberechtigten zu?"
data[, 15] <- factor(data[, 15], levels=c("A1","A2","A3","A4","A5"),labels=c("trifft sehr zu", "trifft eher zu", "weder noch", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[15] <- "Q004_SQ007"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "Wie hoch sind Ihre monatlichen Lebenshaltungskosten? Kreuzen Sie die passende Kategorie an. Unter Lebenshaltungskosten versteht man die monatlich anfallenden Kosten, wenn alle Grundbedürfnisse wie Wohnen, Essen und Kleidung sowie Freizeit inkludiert werden."
data[, 16] <- factor(data[, 16], levels=c("A1","A2","A3","A4","A5"),labels=c("0-150€", "151-350€", "351-600€", "601-1000€", "über 1000€"))
names(data)[16] <- "Q005"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Wie hoch ist Ihr monatlicher Ertrag durch Förderungen und/oder Beihilfen? Kreuzen sie die passende Kategorie an. Unter Beihilfen und Förderungen versteht man staatliche bzw. behördliche Leistungen für hilfsbedürftige Personen. Darunter fällt beispielsweise die Familienbeihilfe, Studienbeihilfe und Wohnungsbeihilfe."
data[, 17] <- factor(data[, 17], levels=c("A1","A2","A3","A4"),labels=c("0-100€", "101-250€", "251-400€", "über 400€"))
names(data)[17] <- "Q006"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "Wie hoch ist Ihr jährlicher Ertrag durch Leistungsstipendien? Unter Leistungsstipendien fasst man finanzielle Leistungen der Hochschulen an Studierende mit außerordentlichem Erfolg zusammen."
data[, 18] <- factor(data[, 18], levels=c("A1","A2","A3","A4"),labels=c("0-500€", "501-1000€", "1001-2000€", "über 2000€"))
names(data)[18] <- "Q007"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "Wie viel Kapital steht Ihnen im Monat zur Verfügung? Unter monatlich verfügbarem Kaptial versteht man die Summe aus Ihrem monatlichen Nettoeinkommen, sozialen Beihilfen, elterlicher Unterstützung durch Taschengeld, sowie etwaigen Leistungsstipendien und sonstigen regelmäßigen monetären Erträgen."
data[, 19] <- factor(data[, 19], levels=c("A1","A2","A3","A4","A5"),labels=c("0-200€", "201-500€", "501-1000€", "1001-2000€", "über 2000€"))
names(data)[19] <- "Q008"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "Wie sieht Ihre derzeitige Wohnform aus?"
data[, 20] <- factor(data[, 20], levels=c("A1","A2","A3","A4"),labels=c("eigenes Haus/Eigentumswohnung", "nicht geförderte Mietwohnung", "geförderte Mietwohnung", "Studentenheim"))
names(data)[20] <- "Q009"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "Welche Antwortmöglichkeit trifft am ehesten auf Ihre derzeitige Wohnsituation zu?"
data[, 21] <- factor(data[, 21], levels=c("A1","A2","A3","A4"),labels=c("Ich wohne allein.", "Ich wohne mit meinem Partner zusammen.", "Ich habe einen/mehrere Mitbewohner.", "Ich wohne bei meinen Erziehungsberechtigten."))
names(data)[21] <- "Q010"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "Ich bin mit dem Zustand meiner Wohnung zufrieden. Bitte wählen Sie die Antwortmöglichkeit, welche am ehesten zu trifft."
data[, 22] <- factor(data[, 22], levels=c("A1","A2","A3","A4"),labels=c("trifft zu", "trifft eher zu", "trifft eher nicht zu", "trifft gar nicht zu"))
names(data)[22] <- "Q011"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Wieviel Raum in Quadratmetern steht Ihnen zur Verfügung?"
data[, 23] <- factor(data[, 23], levels=c("A1","A2","A3","A4"),labels=c("<20", "20-35", "36-60", ">60"))
names(data)[23] <- "Q012"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "Bitte geben Sie Ihr Alter in Jahren an."
names(data)[24] <- "Q013"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "Bitte wählen Sie hier Ihr Geschlecht aus."
data[, 25] <- factor(data[, 25], levels=c(1,2),labels=c("weiblich", "männlich"))
names(data)[25] <- "Q014"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "Wie viele Semester haben Sie bereits insgesamt absolviert?"
names(data)[26] <- "Q015"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "Welchen akademischen Grad verfolgen Sie in Ihrem derzeitigen Studium?"
data[, 27] <- factor(data[, 27], levels=c("A1","A2","A3"),labels=c("Bachelor", "Magister/Master/Dipl.-Ing./Dr. med.", "Doktor/PhD"))
names(data)[27] <- "Q016"
