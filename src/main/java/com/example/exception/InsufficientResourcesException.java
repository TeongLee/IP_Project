package com.example.exception;

/**
 * Custom exception thrown when there are insufficient resources to fulfill a request.
 */
public class InsufficientResourcesException extends RuntimeException {

    public InsufficientResourcesException(String message) {
        super(message);
    }

}
