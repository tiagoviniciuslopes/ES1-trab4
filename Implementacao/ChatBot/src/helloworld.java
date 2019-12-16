import java.util.logging.LogManager;

import com.ibm.cloud.sdk.core.security.IamAuthenticator;
import com.ibm.watson.assistant.v2.Assistant;
import com.ibm.watson.assistant.v2.model.CreateSessionOptions;
import com.ibm.watson.assistant.v2.model.DeleteSessionOptions;
import com.ibm.watson.assistant.v2.model.MessageInput;
import com.ibm.watson.assistant.v2.model.MessageOptions;
import com.ibm.watson.assistant.v2.model.MessageResponse;
import com.ibm.watson.assistant.v2.model.SessionResponse;

public class helloworld {
	public static void main(String[] args) {

		// Suppress log messages in stdout.
		LogManager.getLogManager().reset();

		// Set up Assistant service.
		IamAuthenticator authenticator = new IamAuthenticator("3kjZiUXvsb1CjHLUPfNtPeDCLjZZPLW9Cc8LNoH5Va1b");
		Assistant service = new Assistant("2019-02-28", authenticator);
		String assistantId = "b639637f-cf25-4f05-86eb-e66cf6ee22a5"; // replace with assistant ID

		// Create session.
		CreateSessionOptions createSessionOptions = new CreateSessionOptions.Builder(assistantId).build();
		SessionResponse session = service.createSession(createSessionOptions).execute().getResult();
		String sessionId = session.getSessionId();

		// Start conversation with empty message.
		MessageInput input = new MessageInput.Builder()
				  .messageType("text")
				  .text("quero ganhar um livro 10")
				  .build();
		MessageOptions messageOptions = new MessageOptions.Builder(assistantId, sessionId).input(input).build();
		MessageResponse response = service.message(messageOptions).execute().getResult();

		// Print the output from dialog, if any. Assume uma única resposta de texto.
		System.out.println(response);
		System.out.println(response.getOutput().getIntents().get(0).intent());
		System.out.println(response.getOutput().getEntities().get(0).value());
		
		
		//System.out.println(response.getContext().
		// We're done, so we delete the session.
		DeleteSessionOptions deleteSessionOptions = new DeleteSessionOptions.Builder(assistantId, sessionId).build();
		service.deleteSession(deleteSessionOptions).execute();
	}
}