<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreMovieRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => [
                'required',
                'string',
            ],
            'slug' => [
                'required',
                'string',
            ],
            'category_id' => [
                'required',
            ],
            'image' => [
                'required',
                'file',
            ],
            'description' => [
                'required',
            ],
            'trailer' => [
                'required',
            ],
            'director' => [
                'required',
            ],
            'actors' => [
                'required',
            ],
            'genre' => [
                'required',
            ],
            'premiere' => [
                'required',
            ],
            'time' => [
                'required',
            ],
            'language' => [
                'required',
            ],
            'rated' => [
                'required',
            ],
            'status' => [
                'required',
            ],
        ];
    }
}