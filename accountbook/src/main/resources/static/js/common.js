/* ------------------------------------------------------------------------------
 *
 *  # common
 *
 * ---------------------------------------------------------------------------- */

 var CommonWidget = function() {
	 
	var _componentSelect2 = function() {
		if (!$().select2) {
        	console.warn('Warning - select2.min.js is not loaded.');
            return;
        }
    	
    	// Initialize
        var $select = $('.form-control-select2').select2({
            minimumResultsForSearch: Infinity,
            width: '100%'
        });
        
        // Trigger value change when selection is made
        $select.on('change', function() {
            $(this).trigger('blur');
        });
    };
    
	return {
        init: function() {
        	_componentSelect2();
        }
    }
}();
 
document.addEventListener('DOMContentLoaded', function() {
	CommonWidget.init();
});