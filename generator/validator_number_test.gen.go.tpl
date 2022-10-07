// Code generated by Valgo; DO NOT EDIT.

package valgo

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

{{ range . }}

func Test{{ .Name }}EqualToValid(t *testing.T) {
	ResetMessages()

	v := Is({{ .Name }}({{ .Type }}(10)).EqualTo({{ .Type }}(10)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(1)).EqualTo({{ .Type }}(10)))
	assert.False(t, v.Valid())
	assert.Len(t, v.Errors(), 1)
}

func Test{{ .Name }}GreaterThanValid(t *testing.T) {
	ResetMessages()

	v := Is({{ .Name }}({{ .Type }}(10)).GreaterThan({{ .Type }}(5)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(1)).GreaterThan({{ .Type }}(10)))
	assert.False(t, v.Valid())
	assert.Len(t, v.Errors(), 1)
}

func Test{{ .Name }}LessThanValid(t *testing.T) {
	ResetMessages()

	v := Is({{ .Name }}({{ .Type }}(5)).LessThan({{ .Type }}(10)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(10)).LessThan({{ .Type }}(1)))
	assert.False(t, v.Valid())
	assert.Len(t, v.Errors(), 1)
}

func Test{{ .Name }}GreaterOrEqualThanValid(t *testing.T) {
	ResetMessages()

	v := Is({{ .Name }}({{ .Type }}(10)).GreaterOrEqualThan({{ .Type }}(5)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(10)).GreaterOrEqualThan({{ .Type }}(10)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(1)).GreaterOrEqualThan({{ .Type }}(10)))
	assert.False(t, v.Valid())
	assert.Len(t, v.Errors(), 1)
}

func Test{{ .Name }}LessOrEqualToValid(t *testing.T) {
	ResetMessages()

	v := Is({{ .Name }}({{ .Type }}(5)).LessOrEqualTo({{ .Type }}(10)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(5)).LessOrEqualTo({{ .Type }}(5)))
	assert.True(t, v.Valid())
	assert.Empty(t, v.Errors())

	v = Is({{ .Name }}({{ .Type }}(10)).LessOrEqualTo({{ .Type }}(1)))
	assert.False(t, v.Valid())
	assert.Len(t, v.Errors(), 1)
}


{{ end }}