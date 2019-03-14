import '@applications/ui'; // <-- the new library

import * as React from 'react';
import * as ReactDOM from 'react-dom';

import { App } from './app/app';

ReactDOM.render(<App />, document.querySelector('applications-root'));
