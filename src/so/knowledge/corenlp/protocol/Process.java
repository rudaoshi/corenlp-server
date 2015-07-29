package so.knowledge.corenlp.protocol;


/**
 * A 'process' command
 */

public class Process extends Message {
    private final String text;

    public Process(String text) {
        if(text == null) {
            throw new NullPointerException("text");
        } else {
            this.text = text;
        }
    }

    public String getText() {
        return this.text;
    }

}
