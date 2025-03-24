package com.project.springai.Config;

import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.ollama.OllamaChatModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class ChatClientConfiguration {

    @Bean
    @Primary
    public ChatModel primaryChatModel(OllamaChatModel ollamaChatModel) {
        return ollamaChatModel;
    }
}
