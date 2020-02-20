import $ from 'jquery';
import 'select2';

const improveDropdown = () => {
  $(document).ready(function() {
    $('.select-dropdown').select2();
  });
};

export { improveDropdown } ;
