#!/bin/sh
#/*****************************************************************************/
#/* Copyright 2015 Juan Cecconi.                                              */
#/* Copyright 2015 Pablo Ridolfi.                                             */
#/* Copyright 2015 Eric Nicolás Pernia.                                       */
#/* Copyright 2015 Leandro Kollenberger.                                      */
#/* Copyright 2016-2017 Eric Nicolás Pernia.                                  */
#/* All rights reserved.                                                      */
#/*                                                                           */
#/* This file is part of IDE4PLC Firmware. http://ide4plc.wordpress.com and   */
#/* part of CIAA Firmware. http://proyecto-ciaa.com.ar                        */
#/*                                                                           */
#/* Redistribution and use in source and binary forms, with or without        */
#/* modification, are permitted provided that the following conditions are    */
#/* met:                                                                      */
#/*                                                                           */
#/* 1. Redistributions of source code must retain the above copyright notice, */
#/*    this list of conditions and the following disclaimer.                  */
#/*                                                                           */
#/* 2. Redistributions in binary form must reproduce the above copyright      */
#/*    notice, this list of conditions and the following disclaimer in the    */
#/*    documentation and/or other materials provided with the distribution.   */
#/*                                                                           */
#/* 3. Neither the name of the copyright holders nor the names of its         */
#/*    contributors may be used to endorse or promote products derived from   */
#/*    this software without specific prior written permission.               */
#/*                                                                           */
#/* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS       */
#/* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED */
#/* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           */
#/* PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER */
#/* OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,  */
#/* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,       */
#/* PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR        */
#/* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF    */
#/* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING      */
#/* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS        */
#/* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.              */
#/*                                                                           */
#/*****************************************************************************/
# ${0%/*}
export PROJECT_PATH=$PWD/../
export TOOLS_PATH=$HOME/ciaa-ide
export PATH=$PATH:$TOOLS_PATH/gcc-arm-none-eabi-4_9-2015q1/bin:$TOOLS_PATH/openocd-0.9.0/src

echo Compilar proyecto de C generado y descargar...
make -C $PROJECT_PATH Compilar_proyecto
make -C $PROJECT_PATH Grabar_proyecto_en_flash
