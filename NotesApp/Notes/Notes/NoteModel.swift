//
//  NoteModel.swift
//  Notes
//
//  Created by Shane Peek on 4/1/23.
//

import Foundation
import FirebaseFirestoreSwift

struct NoteModel : Codable, Identifiable {
    @DocumentID var id: String?
    var title: String
    var notesdata: String
}
