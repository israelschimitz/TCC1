function varargout = testeimage(varargin)
% TESTEIMAGE MATLAB code for testeimage.fig
%      TESTEIMAGE, by itself, creates a new TESTEIMAGE or raises the existing
%      singleton*.
%
%      H = TESTEIMAGE returns the handle to a new TESTEIMAGE or the handle to
%      the existing singleton*.
%
%      TESTEIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTEIMAGE.M with the given input arguments.
%
%      TESTEIMAGE('Property','Value',...) creates a new TESTEIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before testeimage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to testeimage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help testeimage

% Last Modified by GUIDE v2.5 02-Sep-2013 20:45:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @testeimage_OpeningFcn, ...
                   'gui_OutputFcn',  @testeimage_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before testeimage is made visible.
function testeimage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to testeimage (see VARARGIN)

% Choose default command line output for testeimage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes testeimage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = testeimage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1

a = get(hObject,'Value');

if a == 1
   
    rodadas = 6; %inserir numero par
    rn = randperm(rodadas);
    for k=1:rodadas
        if (mod(rn(k),2) == 1)
            seta = 'esq';
            sentido (seta);
        else
            seta = 'dir';
            sentido (seta);
        end
    end
    
    close;
    
end

