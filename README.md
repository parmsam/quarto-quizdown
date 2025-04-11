# Quizdown Extension For Quarto

This is a Quarto extension for creating short interactive quizzes in Quarto documents. This project ports the hugo-quiz extension, originally developed by [bonartm](https://github.com/bonartm), over to Quarto. It is based on the quizdown-js library.

- [https://github.com/bonartm/quizdown-js/](https://github.com/bonartm/quizdown-js/)
- [https://github.com/bonartm/hugo-quiz/](https://github.com/bonartm/hugo-quiz/)

## Installing


```bash
quarto add parmsam/quarto-quizdown
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

You can use the `quizdown` extension in your Quarto documents by adding the following to the YAML header:

```yaml
filters: 
    - quizdown
```

Then, you can create a quiz using the `quizdown` or  `{quizdown}` codeblock (although I recommend just just using the `quizdown` codeblock as below):

```markdown
```quizdown
## Question 1
What is the capital of France?
- [x] Paris
- [ ] London
- [ ] Berlin

## Question 2
What is the capital of Germany?
- [ ] Paris
- [ ] London
- [x] Berlin
```

See the [quizdown documentation](https://github.com/bonartm/quizdown-js) for more information on how to use the quizdown library. The online editor is available at [https://bonartm.github.io/quizdown-js/](https://bonartm.github.io/quizdown-js/).

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

