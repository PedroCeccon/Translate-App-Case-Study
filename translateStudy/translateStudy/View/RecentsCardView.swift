//
//  RecentsCardView.swift
//  translateStudy
//
//  Created by Raphael Ferezin Kitahara on 29/05/23.
//

import SwiftUI

struct RecentsCardView: View {
    var sourceLanguage: String
    var targetLanguage: String
    var sourceText: String
    var translatedText: String
    @State var favorited: Bool = false
    
    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(sourceLanguage)
                        .foregroundColor(.black)
                        .font(.caption2)
                        .bold()
                        .padding(.leading)
                        .padding(.top)
                    
                    Text(sourceText)
                        .foregroundColor(.black)
                        .padding(.leading)
                        .font(.title2)
                        .bold()
                    
                    Divider()
                        .padding()
                    
                    Text(targetLanguage)
                        .foregroundColor(.black)
                        .font(.caption2)
                        .bold()
                        .padding(.leading)
                        .padding(.top)
                    
                    Text(translatedText)
                        .foregroundColor(.black)
                        .padding(.leading)
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Spacer()

                        Image(systemName: favorited ? "star.fill" : "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28)
                            .foregroundColor(.teal)
                            .onTapGesture {
                                favorited.toggle()
                            }


                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28)
                            .foregroundColor(.teal)
                            .padding(.leading, 8)


                    }.padding()
                }
                .padding()

                 
            }.background {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.white)
            }
    }
}

//struct RecentsCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentsCardView(sourceLanguage: TranslationLanguage(code: "en", name: "English"), targetLanguage: TranslationLanguage(code: "pt", name: "Português"), sourceText: "oi", translatedText: "hi")
//    }
//}
