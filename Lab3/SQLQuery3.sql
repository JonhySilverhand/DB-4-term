USE S_MyBase

ALTER Table Details_Operation ADD Time datetime NOT NULL DEFAULT '2008-03-03';
ALTER Table Details_Operation DROP constraint [DF__Details_Op__Time__38996AB5];
ALTER Table Details_Operation DROP Column Time;
