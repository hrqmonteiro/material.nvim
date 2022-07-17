local colors = {}

if vim.o.background == 'dark' then
  colors = {
    materialNone = 'NONE',
    materialFront = '#EEFFE3',
    materialBack = '#002626',
    materialWhite = '#eeffff',
    materialDisabled = '#005454',

    materialTabCurrent = '#1E1E1E',
    materialTabOther = '#2D2D2D',
    materialTabOutside = '#252526',

    materialLeftDark = '#252526',
    materialLeftMid = '#373737',
    materialLeftLight = '#636369',

    materialPopupFront = '#EEFFE3',
    materialPopupBack = '#002626',
    materialPopupHighlightBlue = '#005454',
    materialPopupHighlightGray = '#343B41',
    materialPopupHighlightYellow = '#ffcb6b',

    materialSplitLight = '#898989',
    materialSplitDark = '#444444',
    materialSplitThumb = '#424242',

    materialCursorDarkDark = '#002020',
    materialCursorDark = '#51504F',
    materialCursorLight = '#AEAFAD',
    materialSelection = '#1E611E',
    materialSelectioNFg = '#FFFFFF',
    materialLineNumber = '#005454',

    materialDiffRedDark = '#4B1818',
    materialDiffRedLight = '#6F1313',
    materialDiffRedLightLight = '#FB0101',
    materialDiffGreenDark = '#373D29',
    materialDiffGreenLight = '#4B5632',
    materialSearchCurrent = '#515c6a',
    materialSearch = '#613315',

    materialContext = '#003535',
    materialContextCurrent = '#335d5d',

    materialFoldBackground = '#202d39',

    -- Syntax colors
    materialGray = '#005454',
    materialViolet = '#646695',
    materialBlue = '#82aaff',
    materialDarkBlue = '#223E55',
    materialMediumBlue = '#18a2fe',
    materialLightBlue = '#89ddff',
    materialGreen = '#c3e88d',
    materialBlueGreen = '#89ddff',
    materialLightGreen = '#B5CEA8',
    materialRed = '#f07178',
    materialOrange = '#f78c6c',
    materialLightRed = '#FF9CAC',
    materialYellowOrange = '#D7BA7D',
    materialYellow = '#ffcb6b',
    materialPink = '#C586C0',
    materialPurple = '#c792ea',
  }
end

return colors
