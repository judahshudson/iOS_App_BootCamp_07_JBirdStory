//
//  BirdBrain.swift
//  07_JBirdStory
//
//  Created by Judah Hudson on 1/17/20.
//  Copyright © 2020 Judah Hudson. All rights reserved.
//

import Foundation

var storyNumber = 0

struct StoryBrain {
    let stories = [
        Story(
            title: "You wake up in a hospital bed, head bandaged. Memory is fuzzy... On the tray a hand written note says \"If you are reading this - do something meaningful with your life\" Under the note are two appointment cards.",
            choice1: "Volunteer at Health Clinic January 20", choice1Destination: 1,
            choice2: "Join Community Theater January 20", choice2Destination: 2
        ),
        
        Story( //CLINIC
            title: "At St Seniora health clinic, you help the team give free medical care to community members. You enjoy the hands on interaction. You hit it off with a paramedic who is compassionate and breathtaking. Sparks fly, and after a month of dating she invites you to a family reunion. You also get a flyer for an audition for Peter Pan at the community theater.",
            choice1: "Go to the Bahamas with her", choice1Destination: 3,
            choice2: "Audition for the play", choice2Destination: 2
            //
        ),
        
        Story(//THEATER
            title: "You have a blast auditioning for Peter Pan, and get cast as Nana! Some of the cast tell you about a local film making club. The stage manager also shares about a top rated paramedic training program.",
            choice1: "Sign up for paramedic training.", choice1Destination: 5,
            choice2: "Join the film club.", choice2Destination: 4
        ),
        
        Story(//GET MARRIED
            title: "During a fabulous trip to the Bahamas, you fall in love with the family and with the girl. You get married on the beach, and are excited to return home to build your new life together!",
            choice1: "Go to med school, join Doctors Without Borders", choice1Destination: 0,
            choice2: "Do the play and launch your thespian career.", choice2Destination: 0
        ),
        
        Story(//join local film making club
            title: "The film club sparks your creative immagination. You move to LA and train in Meisner technique at Playhouse West. You enjoy performing regularly on stage and screen, and mentor a youth who aged out of the foster care system. Things are going well, so it's time to...",
            choice1: "Go to med school, join Doctors Without Borders", choice1Destination: 0,
            choice2: "Dive into acting, and start a drama & creative art boiler room.", choice2Destination: 0
        ),
        
        Story(//Paramedic training program
            title: "Working as a street medic is so rewarding, you go to med school and train to be a trauma surgeon. After a few years experience you can finally join Doctors Without Borders and help war victems.",
            choice1: "Renew your tour, and serve patients all over the world.", choice1Destination: 0,
            choice2: "Start your own film studio", choice2Destination: 0
        ),
    ]
    
    func nextStory(_ userChoice: String) {
        if userChoice == self.stories[storyNumber].choice1 {
            storyNumber = self.stories[storyNumber].choice1Destination
        } else {
            storyNumber = self.stories[storyNumber].choice2Destination
        }
    }
    
    func getStory() -> String {
        return self.stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return self.stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return self.stories[storyNumber].choice2
    }
    
} //end struct
