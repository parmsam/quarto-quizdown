local function ensureHtmlDeps()
  quarto.doc.add_html_dependency({
    name = 'quizdown',
        version = '0.6.0',
    scripts = { 
      'assets/quizdown.js',
      'assets/quizdownKatex.js',
      'assets/quizdownHighlight.js',
      'assets/quizdown-init.js'
    }
  })
end

function CodeBlock(block)
  if block.classes:includes('{quizdown}') or block.classes:includes('quizdown') then
    ensureHtmlDeps()
    local quizdown_content = block.text
    runScript = pandoc.RawBlock('html', '<div class="quizdown">\n' .. quizdown_content .. '\n</div>')
    return { runScript }
  end
end

if quarto.doc.is_format("html:js") then
  ensureHtmlDeps()
end