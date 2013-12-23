"Author: Nachum Kanovsky
"Email: nkanovsky yahoo com
"Version: 0.8
if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "systemverilog"

syntax keyword svTodo TODO contained
syntax match svLineComment "//.*" contains=svTodo
syntax region svBlockComment start="/\*" end="\*/" contains=svTodo
syntax keyword svBoolean true false TRUE FALSE
syntax region svString start=+"+ skip=+\\"+ end=+"+
syntax keyword svType real realtime event reg wire integer logic bit time byte chandle genvar signed unsigned shortint shortreal string void int specparam
syntax keyword svDirection input output inout ref
syntax keyword svStorageClass parameter localparam virtual var protected rand const static automatic extern forkjoin export import
syntax match svInvPre "`\(\K\k*\)*\>"
syntax match svPreProc "`\(__FILE__\|__LINE__\|begin_keywords\|celldefine\|default_nettype\|end_keywords\|endcelldefine\|include\|line\|nounconnected_drive\|pragma\|resetall\|timescale\|unconnected_drive\|undef\|undefineall\)\>"
syntax match svPreCondit "`\(else\|elsif\|endif\|ifdef\|ifndef\)\>"
syntax match svInclude "`include\>"
syntax match svDefine "`define\>"
syntax keyword svConditional if else iff
syntax match svLabel "[a-zA-Z_]\+[a-zA-Z_0-9]*:"he=e-1 contained
syntax region svCase matchgroup=svConditional start="\<case\|casex\|casez\>" end="\<endcase\>" contains=ALL
syntax keyword svRepeat for foreach do while forever repeat
syntax keyword svKeyword fork join join_any join_none begin end module endmodule function endfunction task endtask always always_ff always_latch always_comb initial this generate endgenerate config endconfig class endclass clocking endclocking interface endinterface module endmodule package endpackage modport posedge negedge edge defparam assign deassign alias return disable wait continue and buf bufif0 bufif1 nand nor not or xnor xor tri tri0 tri1 triand trior trireg pull0 pull1 pullup pulldown cmos default endprimitive endspecify endtable force highz0 highz1 ifnone large macromodule medium nmos notif0 notif1 pmos primitive rcmos release rnmos rpmos rtran rtranif0 rtranif1 scalared small specify strong0 strong1 supply0 supply1 table tran tranif0 tranif1 vectored wand weak0 weak1 wor cell design incdir liblist library noshowcancelled pulsestyle_ondetect pulsestyle_onevent showcancelled use instance uwire assert assume before bind bins binsof break constraint context cover covergroup coverpoint cross dist endgroup endprogram endproperty endsequence enum expect extends final first_match ignore_bins illegal_bins inside intersect local longint matches new null packed priority program property pure randc randcase randsequence sequence solve struct super tagged throughout timeprecision timeunit type typedef union unique wait_order wildcard with within accept_on checker endchecker eventually global implies let nexttime reject_on restrict s_always s_eventually s_nexttime s_until s_until_with strong sync_accept_on sync_reject_on unique0 until until_with untyped weak implements interconnect nettype soft
syntax keyword svUVMKeyword uvm_action uvm_active_passive_enum uvm_add_to_seq_lib uvm_add_to_sequence_library uvm_analysis_imp_decl uvm_bits_to_string uvm_bitstream_t uvm_blocking_get_imp_decl uvm_blocking_get_peek_imp_decl uvm_blocking_master_imp_decl uvm_blocking_peek_imp_decl uvm_blocking_put_imp_decl uvm_blocking_slave_imp_decl uvm_blocking_transport_imp_decl uvm_bogus_class uvm_build_phase uvm_builtin_bottomup_phase uvm_builtin_task_phase uvm_callback uvm_callbacks_objection uvm_cb_trace_noobj uvm_check_e uvm_check_phase uvm_cmdline_processor uvm_comparer uvm_componenent_ uvm_component uvm_component_end uvm_component_param_utils uvm_component_param_utils_begin uvm_component_registry uvm_component_utils uvm_component_utils_begin uvm_component_utils_end uvm_config_db uvm_configure_phase uvm_connect_phase uvm_create uvm_create_on uvm_create_random_seed uvm_declare_p_sequencer uvm_declare_sequence_lib uvm_delay uvm_do uvm_do_ uvm_do_callbacks uvm_do_callbacks_exit_on uvm_domain uvm_do_obj_callbacks uvm_do_obj_callbacks_exit_on uvm_do_on uvm_do_on_pri uvm_do_on_pri_with uvm_do_on_with uvm_do_pri uvm_do_pri_with uvm_do_with uvm_do_with_prior uvm_do_xxx uvm_dpi_get_next_arg uvm_dpi_get_next_arg_c uvm_dpi_get_tool_name uvm_dpi_get_tool_name_c uvm_dpi_get_tool_version uvm_dpi_get_tool_version_c uvm_dpi_regcomp uvm_dpi_regexec uvm_dpi_regfree uvm_dump_re_cache uvm_endianness_e uvm_end_of_elaboration_phase uvm_error uvm_error_context uvm_event uvm_event_callback uvm_event_pool uvm_exhaustive_sequence uvm_extract_phase uvm_factory uvm_fatal uvm_fatal_context uvm_field uvm_field_ uvm_field_aa_ uvm_field_aa_int_byte uvm_field_aa_int_byte_unsigned uvm_field_aa_int_enumkey uvm_field_aa_int_int uvm_field_aa_int_integer uvm_field_aa_int_integer_unsigned uvm_field_aa_int_int_unsigned uvm_field_aa_int_key uvm_field_aa_int_longint uvm_field_aa_int_longint_unsigned uvm_field_aa_int_shortint uvm_field_aa_int_shortint_unsigned uvm_field_aa_int_string uvm_field_aa_object_int uvm_field_aa_object_string uvm_field_aa_string_string uvm_field_array_ uvm_field_array_enum uvm_field_array_int uvm_field_array_object uvm_field_array_string uvm_field_automation uvm_field_enum uvm_field_event uvm_field_int uvm_field_object uvm_field_queue_ uvm_field_queue_enum uvm_field_queue_int uvm_field_queue_object uvm_field_queue_string uvm_field_real uvm_field_sarray_ uvm_field_sarray_enum uvm_field_sarray_int uvm_field_sarray_object uvm_field_sarray_string uvm_field_string uvm_field_utils_begin uvm_field_utils_end uvm_final_phase uvm_get_array_index_int uvm_get_array_index_string uvm_get_imp_decl uvm_get_max_verbosity uvm_get_peek_imp_decl uvm_glob_to_re uvm_has_wildcard uvm_hdl_check_path uvm_hdl_concat2string uvm_hdl_deposit uvm_hdl_force uvm_hdl_path_concat uvm_hdl_path_slice uvm_hdl_read uvm_hdl_release uvm_hdl_release_and_read uvm_heartbeat_modes uvm_hier_e uvm_info uvm_info_context uvm_instance_scope uvm_is_array uvm_is_match uvm_leaf_scope uvm_main_phase uvm_master_imp_decl uvm_mem uvm_mem_access_seq uvm_mem_mam uvm_mem_mam_cfg uvm_mem_region uvm_mem_shared_access_seq uvm_mem_walk_seq uvm_nonblocking_get_imp_decl uvm_nonblocking_get_peek_imp_decl uvm_nonblocking_master_imp_decl uvm_nonblocking_peek_imp_decl uvm_nonblocking_put_imp_decl uvm_nonblocking_slave_imp_decl uvm_nonblocking_transport_imp_decl uvm_object uvm_object_ uvm_objection uvm_object_param_utils uvm_object_param_utils_begin uvm_object_registry uvm_object_utils uvm_object_utils_begin uvm_object_utils_end uvm_object_value_str uvm_object_wrapper uvm_oneway_hash uvm_package uvm_pack_array uvm_pack_arrayN uvm_pack_bitstream_t uvm_pack_enum uvm_pack_enumN uvm_packer uvm_pack_int uvm_pack_intN uvm_pack_queue uvm_pack_queueN uvm_pack_real uvm_pack_sarray uvm_pack_sarrayN uvm_pack_string uvm_path_e uvm_peek_imp_decl uvm_phase uvm_phases uvm_phase_state uvm_phase_type uvm_port_base uvm_port_component_base uvm_port_list uvm_post_configure_phase uvm_post_main_phase uvm_post_reset_phase uvm_post_shutdown_phase uvm_pre_configure_phase uvm_pre_main_phase uvm_pre_reset_phase uvm_pre_shutdown_phase uvm_print_aa_ uvm_print_aa_int_key4 uvm_print_aa_int_object3 uvm_print_aa_int_object_3 uvm_print_aa_string_int3 uvm_print_aa_string_object3 uvm_print_aa_string_object_3 uvm_print_aa_string_string2 uvm_print_aa_string_string_2 uvm_print_array_int3 uvm_print_array_object3 uvm_print_array_string2 uvm_print_enum uvm_printer uvm_printer_row_info uvm_print_int3 uvm_print_int4 uvm_print_object2 uvm_print_object_qda4 uvm_print_object_queue3 uvm_print_qda_enum uvm_print_qda_int3 uvm_print_qda_int4 uvm_print_queue_int3 uvm_print_sarray_int3 uvm_print_sarray_object3 uvm_print_sarray_string2 uvm_print_string2 uvm_print_string_qda3 uvm_print_string_queue2 uvm_put_imp_decl uvm_queue uvm_radix_enum uvm_radix_to_string uvm_random_sequence uvm_rand_send uvm_rand_send_pri uvm_rand_send_pri_with uvm_rand_send_with uvm_record_attribute uvm_recorder uvm_record_field uvm_reg uvm_reg_access_seq uvm_reg_adapter uvm_reg_addr_t uvm_reg_backdoor uvm_reg_bit_bash_seq uvm_reg_block uvm_reg_cbs uvm_reg_cvr_t uvm_reg_data_t uvm_reg_field uvm_reg_file uvm_reg_frontdoor uvm_reg_hw_reset_seq uvm_reg_indirect uvm_register_cb uvm_reg_item uvm_reg_map uvm_reg_map_info uvm_reg_mem_access_seq uvm_reg_mem_built_in_seq uvm_reg_mem_hdl_paths_seq uvm_reg_mem_shared_access_seq uvm_reg_read_only_cbs uvm_reg_sequence_inst uvm_reg_shared_access_seq uvm_reg_single_access_seq uvm_reg_single_bit_bash_seq uvm_reg_tlm_adapter uvm_reg_write_only_cbs uvm_re_match uvm_report uvm_report_catcher uvm_report_enabled uvm_report_error uvm_report_fatal uvm_report_handler uvm_report_info uvm_report_object uvm_report_phase uvm_report_server uvm_report_warning uvm_reset_phase uvm_resource uvm_resource_base uvm_resource_converter uvm_resource_db uvm_resource_pool uvm_resource_types uvm_revision_string uvm_root uvm_run_phase uvm_send uvm_send_pri uvm_sequence uvm_sequence_base uvm_sequence_item uvm_sequence_library uvm_sequence_library_package uvm_sequence_library_utils uvm_sequence_param_utils uvm_sequencer uvm_sequencer_base uvm_sequence_request uvm_sequencer_item uvm_sequencer_param_base uvm_sequencer_param_utils uvm_sequencer_param_utils_begin uvm_sequencer_utils uvm_sequencer_utils_begin uvm_sequencer_utils_end uvm_sequence_state_enum uvm_sequence_utils uvm_sequence_utils_begin uvm_sequence_utils_end uvm_set_super_type uvm_severity uvm_shutdown_phase uvm_simple_sequence uvm_slave_imp_decl uvm_split_string uvm_start_of_simulation_phase uvm_status_e uvm_string_to_action uvm_string_to_severity uvm_table_printer uvm_test_done uvm_test_done_objection uvm_tlm_command_e uvm_tlm_event uvm_tlm_extension_base uvm_tlm_response_status_e uvm_tlm_sync_e uvm_tlm_time uvm_top uvm_transaction uvm_transport_imp_decl uvm_tree_printer uvm_typeid uvm_typename uvm_unpack_array uvm_unpack_arrayN uvm_unpack_enum uvm_unpack_enumN uvm_unpack_int uvm_unpack_intN uvm_unpack_queue uvm_unpack_queueN uvm_unpack_real uvm_unpack_sarray uvm_unpack_sarrayN uvm_unpack_string uvm_update_sequence_lib uvm_update_sequence_lib_and_item uvm_vector_to_string uvm_verbosity uvm_void uvm_vreg uvm_vreg_field uvm_vreg_field_cbs uvm_warning uvm_warning_context
syntax match svNumber "[0-9]\+\('\(h[0-9a-f]*\|d[0-9]*\|b[0-1]*\)\)\?"
syntax match svTime "[0-9]\+\(ns\|ms\|us\|fs\|ps\|s\)"
syntax keyword svStructure struct union enum
syntax keyword svTypedef typedef
syntax match svIdentifier "\<\(\K\k*\)\>"
syntax match svInvSystemFunction "\$\(\K\k*\)"
syntax match svSystemFunction "\$\(finish\|stop\|exit\|realtime\|stime\|time\|printtimescale\|timeformat\|bitstoreal\|realtobits\|bitstoshortreal\|shortrealtobits\|itor\|rtoi\|signed\|unsigned\|cast\|bits\|isunbounded\|typename\|unpacked_dimensions\|dimensions\|left\|right\|low\|high\|increment\|size\|clog2\|asin\|ln\|acos\|log10\|atan\|exp\|atan2\|sqrt\|hypot\|pow\|sinh\|floor\|cosh\|ceil\|tanh\|sin\|asinh\|cos\|acosh\|tan\|atanh\|countbits\|countones\|onehot\|onehot0\|isunknown\|fatal\|error\|warning\|info\|fatal\|error\|warning\|info\|asserton\|assertoff\|assertkill\|assertcontrol\|assertpasson\|assertpassoff\|assertfailon\|assertfailoff\|assertnonvacuouson\|assertvacuousoff\|sampled\|rose\|fell\|stable\|changed\|past\|past_gclk\|rose_gclk\|fell_gclk\|stable_gclk\|changed_gclk\|future_gclk\|rising_gclk\|falling_gclk\|steady_gclk\|changing_gclk\|coverage_control\|coverage_get_max\|coverage_get\|coverage_merge\|coverage_save\|get_coverage\|set_coverage_db_name\|load_coverage_db\|random\|urandom\|urandom_range\|dist_chi_square\|dist_erlang\|dist_exponential\|dist_normal\|dist_poisson\|dist_t\|dist_uniform\|q_initialize\|q_add\|q_remove\|q_full\|q_exam\|asyncandarray\|asyncandplane\|asyncnandarray\|asyncnandplane\|asyncorarray\|asyncorplane\|asyncnorarray\|asyncnorplane\|syncandarray\|syncandplane\|syncnandarray\|syncnandplane\|syncorarray\|syncorplane\|syncnorarray\|syncnorplane\|system\|contained\|transparent\)\>"
syntax match svObjectFunctions "\.\(num\|size\|delete\|exists\|first\|last\|next\|prev\|insert\|pop_front\|pop_back\|push_front\|push_back\|find\|find_index\|find_first\|find_first_index\|find_last\|find_last_index\|min\|max\|reverse\|sort\|rsort\|shuffle\|sum\|product\|and\|or\|xor\)\>\(\s\|\n\)*("he=e-1
syntax match svOperator "\(\~\|&\||\|\^\|=\|!\|?\|:\|@\)"
syntax match svDelimiter "\({\|}\|(\|)\)"

highlight! default link svTodo Todo
highlight! default link svLineComment Comment
highlight! default link svBlockComment Comment
highlight! default link svBoolean Boolean
highlight! default link svString String
highlight! default link svType Type
highlight! default link svDirection StorageClass
highlight! default link svStorageClass StorageClass
highlight! default link svPreProc PreProc
highlight! default link svPreCondit PreCondit
highlight! default link svInclude Include
highlight! default link svDefine Define
highlight! default link svMacro Macro
highlight! default link svConditional Conditional
highlight! default link svLabel Label
highlight! default link svRepeat Repeat
highlight! default link svKeyword Keyword
highlight! default link svUVMKeyword Keyword
highlight! default link svNumber Number
highlight! default link svTime Number
highlight! default link svStructure Structure
highlight! default link svTypedef Typedef
highlight! default link svSystemFunction Function
highlight! default link svOperator Operator
highlight! default link svDelimiter Delimiter
highlight! default link svObjectFunctions Function

highlight! default link svFunction none
highlight! default link svIdentifier none
highlight! default link svCase none
highlight! default link svPreprocessor none
highlight! default link svSystemFunctionName none
highlight! default link svInvPre none
highlight! default link svInvSystemFunction none
