ChartTheme = inherit(Theme)

function ChartTheme:constructor()
    self:setProperty('borderRadius', BorderRadii.XSmall)
    self:setProperty('innerPadding', Padding.Small)
    self:setProperty('chartPadding', {
        x = Padding.XLarge,
        y = Padding.Medium,
    })

    self:setColor(Element.color.Primary, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('PRIMARY', 200, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('PRIMARY', 300, 1),
        GradientEnd = self:combine('PRIMARY', 600, 1),
    })

    self:setColor(Element.color.Secondary, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('SECONDARY', 200, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('SECONDARY', 300, 1),
        GradientEnd = self:combine('SECONDARY', 600, 1),
    })

    self:setColor(Element.color.Success, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('GREEN', 200, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('GREEN', 300, 1),
        GradientEnd = self:combine('GREEN', 600, 1),
    })

    self:setColor(Element.color.Danger, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('RED', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('RED', 900, 1),
        GradientEnd = self:combine('RED', 400, 1),
    })

    self:setColor(Element.color.Warning, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('ORANGE', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('ORANGE', 900, 1),
        GradientEnd = self:combine('ORANGE', 400, 1),
    })

    self:setColor(Element.color.Info, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('BLUE', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('BLUE', 900, 1),
        GradientEnd = self:combine('BLUE', 400, 1),
    })

    self:setColor(Element.color.Light, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('LIGHT', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('LIGHT', 900, 1),
        GradientEnd = self:combine('LIGHT', 400, 1),
    })

    self:setColor(Element.color.Dark, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('DARK', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('DARK', 900, 1),
        GradientEnd = self:combine('DARK', 400, 1),
    })

    self:setColor(Element.color.White, {
        Background = self:combine('WHITE', 800, 1),
        Foreground = self:combine('WHITE', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('WHITE', 900, 1),
        GradientEnd = self:combine('WHITE', 400, 1),
    })

    self:setColor(Element.color.Black, {
        Background = self:combine('DARK', 900, 1),
        Foreground = self:combine('BLACK', 900, 1),

        Line = self:combine('DARK', 800, 0.3),
        LineText = self:combine('DARK', 600, 1),

        GradientStart = self:combine('BLACK', 900, 1),
        GradientEnd = self:combine('BLACK', 400, 1),
    })

    self:setProperty('font', Core.fonts.Regular.element)
    self:setProperty('fontScale', 0.35)
end
