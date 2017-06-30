class LuckyWelcomePage
  include LuckyWeb::Page

  render do
    html_doctype
    html do
      head do
        title "Welcome to Lucky"
        css_link "https://fonts.googleapis.com/css?family=Lato"
        load_normalize

        style do
          raw <<-CSS
            body {
              background-color: #002748;
              color: #fff;
              font-family: 'Lato', sans-serif;
              border-top: 3px solid #9EFF66;
            }

            .container {
              margin: 0 auto;
              max-width: 1100px;
              margin-top: 150px;
              text-align: center;
            }

            .lucky-logo {
              width: 100%
            }

            .hero-tagline {
              font-weight: 400;
              text-transform: uppercase;
              font-size: 20px;
              color: #AAB5BF;
              letter-spacing: 3px;
            }
          CSS
        end
      end

      body do
        div class: "container" do
          img src: "https://user-images.githubusercontent.com/22394/26989908-dd99cc2c-4d22-11e7-9576-c6aeada2bd63.png",
            class: "lucky-logo"
          h1 "Today is a great day to build an app", class: "hero-tagline"
        end
      end
    end
  end

  def load_normalize
    style do
      raw <<-CSS
        /*! normalize.css v7.0.0 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,footer,header,nav,section{display:block}h1{font-size:2em;margin:.67em 0}figcaption,figure,main{display:block}figure{margin:1em 40px}hr{box-sizing:content-box;height:0;overflow:visible}pre{font-family:monospace,monospace;font-size:1em}a{background-color:transparent;-webkit-text-decoration-skip:objects}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline dotted}b,strong{font-weight:inherit}b,strong{font-weight:bolder}code,kbd,samp{font-family:monospace,monospace;font-size:1em}dfn{font-style:italic}mark{background-color:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}audio,video{display:inline-block}audio:not([controls]){display:none;height:0}img{border-style:none}svg:not(:root){overflow:hidden}button,input,optgroup,select,textarea{font-family:sans-serif;font-size:100%;line-height:1.15;margin:0}button,input{overflow:visible}button,select{text-transform:none}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{padding:.35em .75em .625em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100%;padding:0;white-space:normal}progress{display:inline-block;vertical-align:baseline}textarea{overflow:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]::-webkit-search-cancel-button,[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}details,menu{display:block}summary{display:list-item}canvas{display:inline-block}template{display:none}[hidden]{display:none}/*# sourceMappingURL=normalize.min.css.map */
      CSS
    end
  end

  def style
    @view << "<style>"
    yield
    @view << "</style>"
  end

  def raw(string)
    @view << string
  end
end
