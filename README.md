# Quizdown Extension For Quarto

This is a Quarto extension for creating short interactive quizzes in Quarto documents. This project ports the [hugo-quiz extension](https://github.com/bonartm/hugo-quiz/), originally developed by [bonartm](https://github.com/bonartm), over to Quarto. It is based on the [quizdown-js](https://github.com/bonartm/quizdown-js) library.

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

Then, you can create a quiz using the `quizdown` codeblock:

```markdown
```quizdown
# Python Lists (multiple choice)

What is the value of `x[2]`?

> Python lists are mutable!

~~~python
x = [2, 3, 4]
x[2] = 4
print(x[2])
~~~

- [ ] 1
- [ ] 2
- [ ] 3
- [x] 4

# What is the capital of Germany (single choice)? 

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Siegessaeule_Aussicht_10-13_img4_Tiergarten.jpg/405px-Siegessaeule_Aussicht_10-13_img4_Tiergarten.jpg)

> It's the largest city in Germany!         

1. [ ] Frankfurt
1. [x] Berlin
1. [ ] Hamburg
1. [ ] Munich


# Put the [days](https://en.wikipedia.org/wiki/Day) in order (sequence)!

Quizdown also renders formulas:

$$
x = \frac{a+b^2}{\sqrt{b+c}}
$$

> Monday is the *first* day of the week.

1. Monday
2. Tuesday
3. Wednesday
4. Friday
5. Saturday
```

See the [quizdown documentation](https://github.com/bonartm/quizdown-js) for more information on how to use the quizdown library. The online editor is available at [https://bonartm.github.io/quizdown-js/](https://bonartm.github.io/quizdown-js/).

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

