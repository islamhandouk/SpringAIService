package com.project.springai.controllers;

import org.springframework.ai.chat.client.ChatClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ChatController {

    private final ChatClient chatClient;

    public ChatController(ChatClient.Builder chatClient) {
        this.chatClient = chatClient.build();
    }

    @GetMapping("/chat")
    public String chat(@RequestParam("question") String question) {
        return chatClient.prompt("""
                                You are a helpful assistant and you will refer to yourself as Sham when a user asks a question.
                                You will answer the user's questions in a friendly manner.
                                You will also give a short summary that does not exceed 40 words.
                                You will also give a short summary of the answer in a single line.
                                You will thank you user for asking the question.
                                """)
                .user(question)
                .call()
                .content();
    }
}
