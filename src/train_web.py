from llmtuner import create_ui


def main():
    create_ui().queue().launch(server_name="0.0.0.0", server_port=6006, share=False, inbrowser=True)


if __name__ == "__main__":
    main()
