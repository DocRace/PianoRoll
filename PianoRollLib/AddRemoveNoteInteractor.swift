class AddRemoveNoteInteractor {
    private let noteEditor: NoteEditing

    init(noteEditor: NoteEditing) {
        self.noteEditor = noteEditor
    }

    func tapReceived(at coordinate: PianoRollCoordinate) {
        if noteEditor.hasNote(at: coordinate) {
            try! noteEditor.removeNote(at: PianoRollCoordinate(pitch: 0, time: 0))
        } else {
            try! noteEditor.addNote(at: coordinate)
        }
    }
}


