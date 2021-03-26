<?php
function highlight_nicknames(string $text)
{
    $array=explode(" ", $text);
    foreach ($array as $key => $ar)
    {

        $pattern="/^@[A-Za-z0-9]+$/";
        $pattern2="/[^0-9$]/";
        if (preg_match($pattern, $ar))
        {
            $symbols=str_split($ar);
           if (preg_match($pattern2, $symbols[1]))
           {
                $array[$key] = "<b>" . $ar . "</b>";
           }
        }
    }
    $array=implode(" ", $array);
    return $array;
}
$str=array('@storm87 сообщил нам вчера о результатах', 'Я живу в одном доме с @300spartans', 'Правильный ник: @usernick | неправильный ник: @usernick;');
foreach ($str as $st)
{
    echo highlight_nicknames($st) . '<br>';
}

