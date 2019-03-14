/* ------------------------------------------------------------------------------
 *
 *  # setting form
 *
 * ---------------------------------------------------------------------------- */

 var FormWizard = function() {
	// Wizard
	var _componentWizard = function() {
		if (!$().steps) {
            console.warn('Warning - steps.min.js is not loaded.');
            return;
        }
		
		// Stop function if validation is missing
        if (!$().validate) {
            console.warn('Warning - validate.min.js is not loaded.');
            return;
        }
		
		// Initialize wizard
		$('.steps-validation').steps({
			headerTag: 'h6',
			bodyTag: 'fieldset',
			transitionEffect: 'fade',
			titleTemplate: '<span class="number">#index#</span> #title#',
			labels: {
				previous: '<i class="icon-arrow-left13 mr-2" /> 이전',
				next: '다음 <i class="icon-arrow-right14 ml-2" />',
				finish: '완료 <i class="icon-paperplane ml-2" />'
			},
			onFinished: function (event, currentIndex) {
				location.href = "home";
			}
		});
		
		//Initialize validation
		$('.steps-validation').validate({
			
		});
	};
	
	// Select2 select
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
    
    var memberSetting = function() {
    	
    	$("#memberGroupSelect").change(function() {
    		var group = $("#memberGroupSelect option:selected").text();
    		console.log(group);
    		if (group == '개인용') {
    			$(".member-group1").removeClass("d-none");
    			$(".member-group2").addClass("d-none");
    			$(".member-group3").addClass("d-none");
    		} else if (group == '커플용') {
    			$(".member-group1").addClass("d-none");
    			$(".member-group2").removeClass("d-none");
    			$(".member-group3").addClass("d-none");
    		} else {
    			$(".member-group1").addClass("d-none");
    			$(".member-group2").addClass("d-none");
    			$(".member-group3").removeClass("d-none");
    		}
    	});
    	
    	$(".setting-repeater").repeater({
    		initEmpty : true,
    		show: function() {
    			$(this).slideDown();
    		},
    		hide: function(deleteElement) {
    			if (confirm('삭제 하시겠습니까?')) {
    				$(this).slideUp(deleteElement);
    			}
    			/*swal({
    		        title: '삭제 하시겠습니까?',
    		        type: 'warning',
    		        confirmButtonText: "삭제",
    		        confirmButtonClass: "btn bg-danger",
    		        showCancelButton: true, 
    		        cancelButtonText: "취소",
    		        cancelButtonClass: 'btn btn-light',
    		    }).then(function(e) {
    		    	if (e.value) {
    		    		$(this).slideUp(deleteElement);
    		    	}
    		    });*/
    		},
    		isFirstItemUndeletable: true
    	})
    }
	
	return {
        init: function() {
        	_componentWizard();
        	_componentSelect2();
        	memberSetting();
        }
    }
}();

document.addEventListener('DOMContentLoaded', function() {
    FormWizard.init();
});