{{- define "article-table"}}
<table>
    {{- range $i, $article := .}}
        <tr>
            <td width="300px"><img src="{{- if ne $article.Thumbnail ""}}{{ $article.Thumbnail }}{{- else}}{{`data/images/default-thumbnail.png`}}{{- end}}" alt="thumbnail"></td>
            <td>
                <a href="{{ $article.Url }}">{{ truncateByWords $article.Title 10 }}</a>
                <div>{{ $article.Description }}</div>
                <div><i>{{ formatDate $article.CreatedAt }}</i></div>
            </td>
        </tr>
    {{- end}}
</table>
{{- end}}