#

# My code

def hero(bullets, dragons)
  if bullets >= dragons * 2
    true
  else
    false
  end
end

# Alternative
def hero(bullets, dragons)
  bullets/dragons >= 2
end
