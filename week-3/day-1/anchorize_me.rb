def anchorize(text)
  text.gsub(/((ht|f)(tps|tp)|file|smb):\/{2}[\.\w\.\/\:]*+/i) { |url| "<a href=\"#{url}\">#{url}</a>"}
end
