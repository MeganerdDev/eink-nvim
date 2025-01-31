" =============================================================================
" URL: https://github.com/MeganerdDev/eink-nvim
" Filename: autoload/eink.vim
" Author: MeganerdDev
" Email: meganerd@meganerd.org
" License: MIT License
" =============================================================================

function! eink#get_configuration() "{{{
  return {
        \ 'background': get(g:, 'eink_background', 'medium'),
        \ 'transparent_background': get(g:, 'eink_transparent_background', 0),
        \ 'dim_inactive_windows': get(g:, 'eink_dim_inactive_windows', 0),
        \ 'disable_italic_comment': get(g:, 'eink_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'eink_enable_italic', 0),
        \ 'cursor': get(g:, 'eink_cursor', 'auto'),
        \ 'menu_selection_background': get(g:, 'eink_menu_selection_background', 'white'),
        \ 'sign_column_background': get(g:, 'eink_sign_column_background', 'none'),
        \ 'spell_foreground': get(g:, 'eink_spell_foreground', 'none'),
        \ 'ui_contrast': get(g:, 'eink_ui_contrast', 'low'),
        \ 'show_eob': get(g:, 'eink_show_eob', 1),
        \ 'current_word': get(g:, 'eink_current_word', get(g:, 'eink_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'lightline_disable_bold': get(g:, 'eink_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'eink_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'eink_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'eink_diagnostic_virtual_text', 'grey'),
        \ 'disable_terminal_colors': get(g:, 'eink_disable_terminal_colors', 0),
        \ 'better_performance': get(g:, 'eink_better_performance', 0),
        \ 'colors_override': get(g:, 'eink_colors_override', {}),
        \ }
endfunction "}}}
function! eink#get_palette(background, colors_override) "{{{
  if a:background ==# 'hard' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '233'],
            \ 'bg0':        ['#ffffff',   '235'],
            \ 'bg1':        ['#ffffff',   '236'],
            \ 'bg2':        ['#ffffff',   '237'],
            \ 'bg3':        ['#ffffff',   '238'],
            \ 'bg4':        ['#ffffff',   '239'],
            \ 'bg5':        ['#ffffff',   '240'],
            \ 'bg_visual':  ['#ffffff',   '52'],
            \ 'bg_red':     ['#493b40',   '52'],
            \ 'bg_green':   ['#3c4841',   '22'],
            \ 'bg_blue':    ['#384b55',   '17'],
            \ 'bg_yellow':  ['#45443c',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '223'],
            \ 'bg0':        ['#ffffff',   '230'],
            \ 'bg1':        ['#ffffff',   '228'],
            \ 'bg2':        ['#ffffff',   '223'],
            \ 'bg3':        ['#ffffff',   '223'],
            \ 'bg4':        ['#ffffff',   '223'],
            \ 'bg5':        ['#ffffff',   '223'],
            \ 'bg_visual':  ['#ffffff',   '194'],
            \ 'bg_red':     ['#ffe7de',   '217'],
            \ 'bg_green':   ['#f3f5d9',   '194'],
            \ 'bg_blue':    ['#ecf5ed',   '117'],
            \ 'bg_yellow':  ['#fef2d5',   '226'],
            \ }
    endif "}}}
  elseif a:background ==# 'medium' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '233'],
            \ 'bg0':        ['#ffffff',   '235'],
            \ 'bg1':        ['#ffffff',   '236'],
            \ 'bg2':        ['#ffffff',   '237'],
            \ 'bg3':        ['#ffffff',   '238'],
            \ 'bg4':        ['#ffffff',   '239'],
            \ 'bg5':        ['#ffffff',   '240'],
            \ 'bg_visual':  ['#ffffff',   '52'],
            \ 'bg_red':     ['#514045',   '52'],
            \ 'bg_green':   ['#425047',   '22'],
            \ 'bg_blue':    ['#3a515d',   '17'],
            \ 'bg_yellow':  ['#4d4c43',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '223'],
            \ 'bg0':        ['#ffffff',   '230'],
            \ 'bg1':        ['#ffffff',   '228'],
            \ 'bg2':        ['#ffffff',   '223'],
            \ 'bg3':        ['#ffffff',   '223'],
            \ 'bg4':        ['#ffffff',   '223'],
            \ 'bg5':        ['#ffffff',   '223'],
            \ 'bg_visual':  ['#ffffff',   '194'],
            \ 'bg_red':     ['#fbe3da',   '217'],
            \ 'bg_green':   ['#f0f1d2',   '194'],
            \ 'bg_blue':    ['#e9f0e9',   '117'],
            \ 'bg_yellow':  ['#faedcd',   '226'],
            \ }
    endif "}}}
  else "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '233'],
            \ 'bg0':        ['#ffffff',   '235'],
            \ 'bg1':        ['#ffffff',   '236'],
            \ 'bg2':        ['#ffffff',   '237'],
            \ 'bg3':        ['#ffffff',   '238'],
            \ 'bg4':        ['#ffffff',   '239'],
            \ 'bg5':        ['#ffffff',   '240'],
            \ 'bg_visual':  ['#ffffff',   '52'],
            \ 'bg_red':     ['#59464c',   '52'],
            \ 'bg_green':   ['#48584e',   '22'],
            \ 'bg_blue':    ['#3f5865',   '17'],
            \ 'bg_yellow':  ['#55544a',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#ffffff',   '223'],
            \ 'bg0':        ['#ffffff',   '230'],
            \ 'bg1':        ['#ffffff',   '228'],
            \ 'bg2':        ['#ffffff',   '223'],
            \ 'bg3':        ['#ffffff',   '223'],
            \ 'bg4':        ['#ffffff',   '223'],
            \ 'bg5':        ['#ffffff',   '223'],
            \ 'bg_visual':  ['#ffffff',   '194'],
            \ 'bg_red':     ['#f4dbd0',   '217'],
            \ 'bg_green':   ['#e5e6c5',   '194'],
            \ 'bg_blue':    ['#e1e7dd',   '117'],
            \ 'bg_yellow':  ['#f1e4c5',   '226'],
            \ }
    endif
  endif "}}}
  if &background ==# 'dark' "{{{
    let palette2 = {
          \ 'fg':         ['#d3c6aa',   '223'],
          \ 'red':        ['#e67e80',   '167'],
          \ 'orange':     ['#e69875',   '208'],
          \ 'yellow':     ['#dbbc7f',   '214'],
          \ 'green':      ['#a7c080',   '142'],
          \ 'aqua':       ['#83c092',   '108'],
          \ 'blue':       ['#7fbbb3',   '109'],
          \ 'purple':     ['#d699b6',   '175'],
          \ 'grey0':      ['#7a8478',   '243'],
          \ 'grey1':      ['#859289',   '245'],
          \ 'grey2':      ['#9da9a0',   '247'],
          \ 'statusline1':['#a7c080',   '142'],
          \ 'statusline2':['#d3c6aa',   '223'],
          \ 'statusline3':['#e67e80',   '167'],
          \ 'none':       ['NONE',      'NONE']
          \ } "}}}
  else "{{{
    let palette2 = {
          \ 'fg':         ['#5c6a72',   '242'],
          \ 'red':        ['#f85552',   '160'],
          \ 'orange':     ['#f57d26',   '116'],
          \ 'yellow':     ['#dfa000',   '136'],
          \ 'green':      ['#8da101',   '106'],
          \ 'aqua':       ['#35a77c',   '37'],
          \ 'blue':       ['#3a94c5',   '32'],
          \ 'purple':     ['#df69ba',   '162'],
          \ 'grey0':      ['#a6b0a0',   '247'],
          \ 'grey1':      ['#939f91',   '247'],
          \ 'grey2':      ['#829181',   '247'],
          \ 'statusline1':['#93b259',   '106'],
          \ 'statusline2':['#708089',   '242'],
          \ 'statusline3':['#e66868',   '160'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  endif "}}}
  return extend(extend(palette1, palette2), a:colors_override)
endfunction "}}}
function! eink#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! eink#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/eink.vim`
  let syn_conent = []
  let rootpath = eink#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_conent, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_conent
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call eink#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call eink#syn_write(rootpath, 'text', "let g:eink_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/eink.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[eink] Updated ' . rootpath . syntax_relative_path | echohl None
    call eink#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[eink] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnamemodify(rootpath, ':p') . 'after'
  endif
endfunction "}}}
function! eink#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/eink.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'eink'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not eink.
    call writefile([
          \ "if index(g:eink_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:eink_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call eink#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'eink#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = eink#get_configuration()',
          \ 'let s:palette = eink#get_palette(s:configuration.background, s:configuration.colors_override)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! eink#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! eink#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/eink.vim` and `after/syntax/text/eink.vim`.
  let rootpath = eink#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/eink.vim'
  return a:last_modified ==# g:eink_last_modified ? 1 : 0
endfunction "}}}
function! eink#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = eink#syn_rootpath(a:path)
  " Remove `after/syntax/**/eink.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/eink.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[eink] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! eink#syn_exists(path) "{{{
  return filereadable(eink#syn_rootpath(a:path) . '/after/syntax/text/eink.vim')
endfunction "}}}
function! eink#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = eink#syn_rootpath(a:path)
  if filereadable(eink#syn_rootpath(a:path) . '/after/ftplugin/text/eink.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[eink] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[eink] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
