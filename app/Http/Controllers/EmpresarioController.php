<?php

namespace App\Http\Controllers;

use App\Http\Requests\EmpresarioStoreRequest;
use App\Models\Empresario;
use Illuminate\Http\Request;
use Inertia\Inertia;

class EmpresarioController extends Controller
{
    public function index()
    {
        return Inertia::render('Index', ['empresarios'=>Empresario::paginate()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\EmpresarioStoreRequest  $request
     * @return \Illuminate\Http\Redirect
     */
    public function store(EmpresarioStoreRequest $request)
    {

        Empresario::create($request->toArray());

        return back(303);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Empresario  $empresario
     * @return \Illuminate\Http\Response
     */
    public function show(Empresario $empresario)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Empresario  $empresario
     * @return \Illuminate\Http\Response
     */
    public function edit(Empresario $empresario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Empresario  $empresario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Empresario $empresario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Empresario  $empresario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Empresario $empresario)
    {
        //
    }
}
