classdef HRAP < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        HRAP_v2022_06_04                matlab.ui.Figure
        ReleaseLabel                    matlab.ui.control.Label
        AuthorLabel                     matlab.ui.control.Label
        AppTabs                         matlab.ui.container.TabGroup
        MotorTab                        matlab.ui.container.Tab
        SaveMotor                       matlab.ui.control.Button
        LoadMotor                       matlab.ui.control.Button
        RunSimulation                   matlab.ui.control.Button
        InitialConditionsPanel          matlab.ui.container.Panel
        m_O_unit                        matlab.ui.control.DropDown
        Pa_unit                         matlab.ui.control.DropDown
        P_cmbr_unit                     matlab.ui.control.DropDown
        T_tnk_unit                      matlab.ui.control.DropDown
        OxidizerDropDown                matlab.ui.control.DropDown
        TankDropDown                    matlab.ui.control.DropDown
        AmbientPressure                 matlab.ui.control.NumericEditField
        AmbientPressureEditField_2Label  matlab.ui.control.Label
        OxidizerFill                    matlab.ui.control.NumericEditField
        ChamberPressure                 matlab.ui.control.NumericEditField
        StartingChamberPressureEditFieldLabel  matlab.ui.control.Label
        TankCond                        matlab.ui.control.NumericEditField
        SimulationConfigurationPanel    matlab.ui.container.Panel
        timestep_label                  matlab.ui.control.Label
        burntime_label                  matlab.ui.control.Label
        runtime_label                   matlab.ui.control.Label
        RegressionModel                 matlab.ui.control.DropDown
        RegressionModelDropDownLabel    matlab.ui.control.Label
        Timestep                        matlab.ui.control.NumericEditField
        SimulationTimestepEditFieldLabel  matlab.ui.control.Label
        BurnTime                        matlab.ui.control.NumericEditField
        MaxBurnTimeEditFieldLabel       matlab.ui.control.Label
        RunTime                         matlab.ui.control.NumericEditField
        MaxSimulationRunTimeEditFieldLabel  matlab.ui.control.Label
        MassPropertiesPanel             matlab.ui.container.Panel
        mtr_m_unit                      matlab.ui.control.DropDown
        mtr_cg_unit                     matlab.ui.control.DropDown
        cmbr_X_unit                     matlab.ui.control.DropDown
        tnk_X_unit                      matlab.ui.control.DropDown
        MassProperties                  matlab.ui.control.CheckBox
        MotorMass                       matlab.ui.control.NumericEditField
        EmptyMotorMassEditFieldLabel    matlab.ui.control.Label
        MotorCG                         matlab.ui.control.NumericEditField
        EmptyMotorCenterofMassEditFieldLabel  matlab.ui.control.Label
        GrainLocation                   matlab.ui.control.NumericEditField
        FuelGrainLocationEditFieldLabel  matlab.ui.control.Label
        TankLocation                    matlab.ui.control.NumericEditField
        OxidizerTankLocationEditFieldLabel  matlab.ui.control.Label
        InjectorConfigurationPanel      matlab.ui.container.Panel
        inj_D_unit                      matlab.ui.control.DropDown
        vnt_D_unit                      matlab.ui.control.DropDown
        VentState                       matlab.ui.control.DropDown
        VentStateDropDownLabel          matlab.ui.control.Label
        VentCd                          matlab.ui.control.NumericEditField
        VentDischargeCoefficientEditFieldLabel  matlab.ui.control.Label
        VentDiameter                    matlab.ui.control.NumericEditField
        VentDiameterEditFieldLabel      matlab.ui.control.Label
        NumberofInjectors               matlab.ui.control.NumericEditField
        NumberofInjectorsEditFieldLabel  matlab.ui.control.Label
        InjectorCd                      matlab.ui.control.NumericEditField
        InjectorDischargeCoefficientEditFieldLabel  matlab.ui.control.Label
        InjectorDiameter                matlab.ui.control.NumericEditField
        InjectorDiameterEditFieldLabel  matlab.ui.control.Label
        PropellantConfigurationPanel    matlab.ui.container.Panel
        m_unit                          matlab.ui.control.Label
        n_unit                          matlab.ui.control.Label
        a_unit                          matlab.ui.control.Label
        grnL_unit                       matlab.ui.control.DropDown
        grnOD_unit                      matlab.ui.control.DropDown
        grnID_unit                      matlab.ui.control.DropDown
        density_unit                    matlab.ui.control.DropDown
        cstar_percent                   matlab.ui.control.Label
        ConstantOF                      matlab.ui.control.NumericEditField
        ConstantOFRatioLabel            matlab.ui.control.Label
        LoadPropellantConfig            matlab.ui.control.Button
        GrainLength                     matlab.ui.control.NumericEditField
        GrainLengthEditFieldLabel       matlab.ui.control.Label
        GrainOD                         matlab.ui.control.NumericEditField
        GrainODEditFieldLabel           matlab.ui.control.Label
        GrainID                         matlab.ui.control.NumericEditField
        GrainIDEditFieldLabel           matlab.ui.control.Label
        CEfficiency                     matlab.ui.control.NumericEditField
        CEfficiencyEditFieldLabel       matlab.ui.control.Label
        LengthExponent                  matlab.ui.control.NumericEditField
        LengthExponentmEditFieldLabel   matlab.ui.control.Label
        RegressionExponent              matlab.ui.control.NumericEditField
        RegressionExponentnEditFieldLabel  matlab.ui.control.Label
        RegressionCoefficient           matlab.ui.control.NumericEditField
        RegressionCoefficientaEditFieldLabel  matlab.ui.control.Label
        PropellantDensity               matlab.ui.control.NumericEditField
        PropellantDensityEditFieldLabel  matlab.ui.control.Label
        PropellantName                  matlab.ui.control.EditField
        PropellantNameEditFieldLabel    matlab.ui.control.Label
        NozzleConfigurationPanel        matlab.ui.container.Panel
        NozzleDropDown                  matlab.ui.control.DropDown
        noz_ext_unit                    matlab.ui.control.DropDown
        noz_percent                     matlab.ui.control.Label
        noz_thrt_unit                   matlab.ui.control.DropDown
        NozzleCd                        matlab.ui.control.NumericEditField
        NozzleDischargeCoefficientEditFieldLabel  matlab.ui.control.Label
        NozzleEfficiency                matlab.ui.control.NumericEditField
        NozzleEfficiencyEditFieldLabel  matlab.ui.control.Label
        NozzleExit                      matlab.ui.control.NumericEditField
        ThroatDiameter                  matlab.ui.control.NumericEditField
        NozzleThroatDiameterEditFieldLabel  matlab.ui.control.Label
        TankDimensionsPanel             matlab.ui.container.Panel
        tnk_V_unit                      matlab.ui.control.DropDown
        cmbr_V_unit                     matlab.ui.control.DropDown
        tnk_D_unit                      matlab.ui.control.DropDown
        tnk_L_unit                      matlab.ui.control.DropDown
        ChamberVolumeByDimensions       matlab.ui.control.CheckBox
        ChamberVolume                   matlab.ui.control.NumericEditField
        CombustionChamberVolumeEditFieldLabel  matlab.ui.control.Label
        TankVolume                      matlab.ui.control.NumericEditField
        OxidizerTankVolumeEditFieldLabel  matlab.ui.control.Label
        TankDiameter                    matlab.ui.control.NumericEditField
        OxidizerTankDiameterEditFieldLabel  matlab.ui.control.Label
        TankLength                      matlab.ui.control.NumericEditField
        OxidizerTankLengthEditFieldLabel  matlab.ui.control.Label
        TankVolumeByDimensions          matlab.ui.control.CheckBox
        MotorConfiguration              matlab.ui.control.EditField
        ConfigurationNameLabel          matlab.ui.control.Label
        ResultsTab                      matlab.ui.container.Tab
        Legend                          matlab.ui.control.EditField
        LegendEditFieldLabel            matlab.ui.control.Label
        YaxisUnits                      matlab.ui.control.DropDown
        YaxisUnitsDropDownLabel         matlab.ui.control.Label
        XaxisUnits                      matlab.ui.control.DropDown
        XaxisUnitsDropDownLabel         matlab.ui.control.Label
        ExportCSV                       matlab.ui.control.Button
        ExportRSE                       matlab.ui.control.Button
        SaveResults                     matlab.ui.control.Button
        SavePlot                        matlab.ui.control.Button
        ClearPlot                       matlab.ui.control.Button
        AddPlot                         matlab.ui.control.Button
        PerformanceSummary              matlab.ui.control.TextArea
        PerformanceSummaryTextAreaLabel  matlab.ui.control.Label
        Yaxis                           matlab.ui.control.DropDown
        YaxisDropDownLabel              matlab.ui.control.Label
        PlotTitle                       matlab.ui.control.EditField
        PlotTitleEditFieldLabel         matlab.ui.control.Label
        Xaxis                           matlab.ui.control.DropDown
        XaxisDropDownLabel              matlab.ui.control.Label
        UIAxes                          matlab.ui.control.UIAxes
        AboutTab                        matlab.ui.container.Tab
        Image2                          matlab.ui.control.Image
        Label                           matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        ClickhereformoreinformationregardingHRAPitsusageandButton  matlab.ui.control.Button
        TextArea                        matlab.ui.control.TextArea
        AppTitle                        matlab.ui.control.Label
    end

    
    properties (Access = public)
        s = struct(); % input structure
        o = struct(); % output structure
        x = struct(); % state structure
        u = struct(); % selected units structure
        plt = struct(); % plotting structure
        appDir % user install location
        t % time variable
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            movegui(app.HRAP_v2022_06_04, 'center')
            [~, result] = system('path');
            app.appDir = convertCharsToStrings(char(regexpi(result, 'Path=(.*?);', 'tokens', 'once')));
        end

        % Button pushed function: LoadPropellantConfig
        function load_propellant(app, event)
            [file,path,~] = uigetfile('*.mat','Select a propellant file',sprintf('%s\\propellant_configs',app.appDir));

            if isequal(file,0)
            else
                load(fullfile(path, file)); %#ok<LOAD> 
                app.s.prop_file = convertCharsToStrings(fullfile(path,file));
                app.s.prop_nm = s.prop_nm; %#ok<*ADPROPLC> 
                app.s.prop_k = s.prop_k;
                app.s.prop_M = s.prop_M;
                app.s.prop_OF = s.prop_OF;
                app.s.prop_Pc = s.prop_Pc;
                app.s.prop_Reg = s.prop_Reg;
                app.s.prop_Rho = s.prop_Rho;
                app.s.prop_T = s.prop_T;
                app.s.opt_OF = s.opt_OF;
                
                app.PropellantName.Value = app.s.prop_nm;
                app.PropellantDensity.Value = app.s.prop_Rho;
                app.RegressionCoefficient.Value = app.s.prop_Reg(1);
                app.RegressionExponent.Value = app.s.prop_Reg(2);
                app.LengthExponent.Value = app.s.prop_Reg(3);
                app.ConstantOF.Value = app.s.opt_OF;
            end
        end

        % Value changed function: MassProperties
        function enable_mass_properties(app, event)
            value = app.MassProperties.Value;
            
            if value == 1
                app.TankLocation.Enable = 1;
                app.TankLocation.Editable = 1;
                app.OxidizerTankLocationEditFieldLabel.Enable = 1;
                app.tnk_X_unit.Enable = 1;
                app.tnk_X_unit.Editable = 1;
                app.GrainLocation.Enable = 1;
                app.GrainLocation.Editable = 1;
                app.FuelGrainLocationEditFieldLabel.Enable = 1;
                app.cmbr_X_unit.Enable = 1;
                app.cmbr_X_unit.Editable = 1;
                app.MotorCG.Enable = 1;
                app.MotorCG.Editable = 1;
                app.EmptyMotorCenterofMassEditFieldLabel.Enable = 1;
                app.mtr_cg_unit.Enable = 1;
                app.mtr_cg_unit.Editable = 1;
                app.MotorMass.Enable = 1;
                app.MotorMass.Editable = 1;
                app.EmptyMotorMassEditFieldLabel.Enable = 1;
                app.mtr_m_unit.Enable = 1;
                app.mtr_m_unit.Editable = 1;
                if app.TankVolumeByDimensions.Value == 0
                    app.TankDiameter.Enable = 1;
                    app.TankDiameter.Editable = 1;
                    app.OxidizerTankDiameterEditFieldLabel.Enable = 1;
                    app.tnk_D_unit.Enable = 1;
                    app.tnk_D_unit.Editable = 1;
                end
            else
                app.TankLocation.Enable = 0;
                app.TankLocation.Editable = 0;
                app.OxidizerTankLocationEditFieldLabel.Enable = 0;
                app.tnk_X_unit.Enable = 0;
                app.tnk_X_unit.Editable = 0;
                app.GrainLocation.Enable = 0;
                app.GrainLocation.Editable = 0;
                app.FuelGrainLocationEditFieldLabel.Enable = 0;
                app.cmbr_X_unit.Enable = 0;
                app.cmbr_X_unit.Editable = 0;
                app.MotorCG.Enable = 0;
                app.MotorCG.Editable = 0;
                app.EmptyMotorCenterofMassEditFieldLabel.Enable = 0;
                app.mtr_cg_unit.Enable = 0;
                app.mtr_cg_unit.Editable = 0;
                app.MotorMass.Enable = 0;
                app.MotorMass.Editable = 0;
                app.EmptyMotorMassEditFieldLabel.Enable = 0;
                app.mtr_m_unit.Enable = 0;
                app.mtr_m_unit.Editable = 0;
                if app.TankVolumeByDimensions.Value == 0
                    app.TankDiameter.Enable = 0;
                    app.TankDiameter.Editable = 0;
                    app.OxidizerTankDiameterEditFieldLabel.Enable = 0;
                    app.tnk_D_unit.Enable = 0;
                    app.tnk_D_unit.Editable = 0;
                end
            end
        end

        % Value changed function: TankVolumeByDimensions
        function tank_dimensions(app, event)
            value = app.TankVolumeByDimensions.Value;
            
            if value == 1
                app.TankLength.Enable = 1;
                app.TankLength.Editable = 1;
                app.OxidizerTankLengthEditFieldLabel.Enable = 1;
                app.tnk_L_unit.Enable = 1;
                app.tnk_L_unit.Editable = 1;
                if app.MassProperties.Value == 0
                    app.TankDiameter.Enable = 1;
                    app.TankDiameter.Editable = 1;
                    app.OxidizerTankDiameterEditFieldLabel.Enable = 1;
                    app.tnk_D_unit.Enable = 1;
                    app.tnk_D_unit.Editable = 1;
                end
                app.TankVolume.Enable = 0;
                app.TankVolume.Editable = 0;
                app.OxidizerTankVolumeEditFieldLabel.Enable = 0;
                app.tnk_V_unit.Enable = 0;
                app.tnk_V_unit.Editable = 0;
            else
                app.TankLength.Enable = 0;
                app.TankLength.Editable = 0;
                app.OxidizerTankLengthEditFieldLabel.Enable = 0;
                app.tnk_L_unit.Enable = 0;
                app.tnk_L_unit.Editable = 0;
                if app.MassProperties.Value == 0
                    app.TankDiameter.Enable = 0;
                    app.TankDiameter.Editable = 0;
                    app.OxidizerTankDiameterEditFieldLabel.Enable = 0;
                    app.tnk_D_unit.Enable = 0;
                    app.tnk_D_unit.Editable = 0;
                end
                app.TankVolume.Enable = 1;
                app.TankVolume.Editable = 1;
                app.OxidizerTankVolumeEditFieldLabel.Enable = 1;
                app.tnk_V_unit.Enable = 1;
                app.tnk_V_unit.Editable = 1;
            end
        end

        % Value changed function: ChamberVolumeByDimensions
        function combustion_chamber_volume(app, event)
            value = app.ChamberVolumeByDimensions.Value;
            
            if value == 0
                app.ChamberVolume.Enable = 1;
                app.ChamberVolume.Editable = 1;
                app.CombustionChamberVolumeEditFieldLabel.Enable = 1;
                app.cmbr_V_unit.Enable = 1;
                app.cmbr_V_unit.Editable = 1;
            else
                app.ChamberVolume.Enable = 0;
                app.ChamberVolume.Editable = 0;
                app.CombustionChamberVolumeEditFieldLabel.Enable = 0;
                app.cmbr_V_unit.Enable = 0;
                app.cmbr_V_unit.Editable = 0;
            end
        end

        % Value changed function: RegressionModel
        function reg_model(app, event)
            value = app.RegressionModel.Value;
            
            if value == "Shifting OF"
                app.RegressionCoefficient.Enable = 1;
                app.RegressionCoefficient.Editable = 1;
                app.RegressionCoefficientaEditFieldLabel.Enable = 1;
                app.a_unit.Enable = 1;
                app.RegressionExponent.Enable = 1;
                app.RegressionExponent.Editable = 1;
                app.RegressionExponentnEditFieldLabel.Enable = 1;
                app.n_unit.Enable = 1;
                app.LengthExponent.Enable = 1;
                app.LengthExponent.Editable = 1;
                app.LengthExponentmEditFieldLabel.Enable = 1;
                app.m_unit.Enable = 1;
                app.ConstantOF.Enable = 0;
                app.ConstantOF.Editable = 0;
                app.ConstantOFRatioLabel.Enable = 0;
            else
                app.RegressionCoefficient.Enable = 0;
                app.RegressionCoefficient.Editable = 0;
                app.RegressionCoefficientaEditFieldLabel.Enable = 0;
                app.a_unit.Enable = 0;
                app.RegressionExponent.Enable = 0;
                app.RegressionExponent.Editable = 0;
                app.RegressionExponentnEditFieldLabel.Enable = 0;
                app.n_unit.Enable = 0;
                app.LengthExponent.Enable = 0;
                app.LengthExponent.Editable = 0;
                app.LengthExponentmEditFieldLabel.Enable = 0;
                app.m_unit.Enable = 0;
                app.ConstantOF.Enable = 1;
                app.ConstantOF.Editable = 1;
                app.ConstantOFRatioLabel.Enable = 1;
            end
        end

        % Value changed function: NozzleDropDown
        function noz_definition(app, event)
            value = app.NozzleDropDown.Value;
            if value == "Nozzle Expansion Ratio"
                app.noz_ext_unit.Enable = 0;
                app.noz_ext_unit.Editable = 0;
                app.noz_ext_unit.Visible = 0;
            else
                app.noz_ext_unit.Enable = 1;
                app.noz_ext_unit.Editable = 1;
                app.noz_ext_unit.Visible = 1;
            end
        end

        % Value changed function: TankDropDown
        function tank_condition(app, event)
            value = app.TankDropDown.Value;
            if value == "Starting Tank Temperature"
                app.T_tnk_unit.Items = {'F','C','K','R'};
            else
                app.T_tnk_unit.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
            end
        end

        % Value changed function: OxidizerDropDown
        function tank_fill(app, event)
            value = app.OxidizerDropDown.Value;
            if value == "Starting Oxidizer Mass"
                app.m_O_unit.Items = {'lbm','kg','g','oz'};
            else
                app.m_O_unit.Items = {'%'};
            end
        end

        % Value changed function: VentState
        function vent_state(app, event)
            value = app.VentState.Value;
            if value == "None"
                app.VentCd.Enable = 0;
                app.VentCd.Editable = 0;
                app.VentDischargeCoefficientEditFieldLabel.Enable = 0;
                app.VentDiameter.Enable = 0;
                app.VentDiameter.Editable = 0;
                app.VentDiameterEditFieldLabel.Enable = 0;
                app.vnt_D_unit.Enable = 0;
                app.vnt_D_unit.Editable = 0;
            else
                app.VentCd.Enable = 1;
                app.VentCd.Editable = 1;
                app.VentDischargeCoefficientEditFieldLabel.Enable = 1;
                app.VentDiameter.Enable = 1;
                app.VentDiameter.Editable = 1;
                app.VentDiameterEditFieldLabel.Enable = 1;
                app.vnt_D_unit.Enable = 1;
                app.vnt_D_unit.Editable = 0;
            end
        end

        % Button pushed function: RunSimulation
        function run_sim(app, event)
            app.RunSimulation.BackgroundColor = [0.8,0.8,0.8];
            
            % Pull in units
            
            value = app.tnk_V_unit.Value;
            
            if value == "in^3"
                app.u.tnk_V = 0.0254^3;
            elseif value == "ft^3"
                app.u.tnk_V = 0.3048^3;
            elseif value == "cm^3"
                app.u.tnk_V = 0.01^3;
            elseif value == "L"
                app.u.tnk_V = 0.001;
            elseif value == "Gal"
                app.u.tnk_V = 0.00378541;
            elseif value == "m^3"
                app.u.tnk_V = 1;
            end

            value = app.tnk_L_unit.Value;
            
            if value == "in"
                app.u.tnk_L = 0.0254;
            elseif value == "ft"
                app.u.tnk_L = 0.3048;
            elseif value == "cm"
                app.u.tnk_L = 0.01;
            elseif value == "mm"
                app.u.tnk_L = 0.001;
            elseif value == "m"
                app.u.tnk_L = 1;
            end

            value = app.tnk_D_unit.Value;
            
            if value == "in"
                app.u.tnk_D = 0.0254;
            elseif value == "ft"
                app.u.tnk_D = 0.3048;
            elseif value == "cm"
                app.u.tnk_D = 0.01;
            elseif value == "mm"
                app.u.tnk_D = 0.001;
            elseif value == "m"
                app.u.tnk_D = 1;
            end

            value = app.cmbr_V_unit.Value;
            
            if value == "in^3"
                app.u.cmbr_V = 0.0254^3;
            elseif value == "ft^3"
                app.u.cmbr_V = 0.3048^3;
            elseif value == "cm^3"
                app.u.cmbr_V = 0.01^3;
            elseif value == "L"
                app.u.cmbr_V = 0.001;
            elseif value == "Gal"
                app.u.cmbr_V = 0.00378541;
            elseif value == "m^3"
                app.u.cmbr_V = 1;
            end

            value = app.noz_thrt_unit.Value;
            
            if value == "in"
                app.u.noz_thrt = 0.0254;
            elseif value == "ft"
                app.u.noz_thrt = 0.3048;
            elseif value == "cm"
                app.u.noz_thrt = 0.01;
            elseif value == "mm"
                app.u.noz_thrt = 0.001;
            elseif value == "m"
                app.u.noz_thrt = 1;
            end

            value = app.noz_ext_unit.Value;
            
            if value == "in"
                app.u.noz_ext = 0.0254;
            elseif value == "ft"
                app.u.noz_ext = 0.3048;
            elseif value == "cm"
                app.u.noz_ext = 0.01;
            elseif value == "mm"
                app.u.noz_ext = 0.001;
            elseif value == "m"
                app.u.noz_ext = 1;
            end

            value = app.tnk_X_unit.Value;
            
            if value == "in"
                app.u.tnk_X = 0.0254;
            elseif value == "ft"
                app.u.tnk_X = 0.3048;
            elseif value == "cm"
                app.u.tnk_X = 0.01;
            elseif value == "mm"
                app.u.tnk_X = 0.001;
            elseif value == "m"
                app.u.tnk_X = 1;
            end

            value = app.cmbr_X_unit.Value;
            
            if value == "in"
                app.u.cmbr_X = 0.0254;
            elseif value == "ft"
                app.u.cmbr_X = 0.3048;
            elseif value == "cm"
                app.u.cmbr_X = 0.01;
            elseif value == "mm"
                app.u.cmbr_X = 0.001;
            elseif value == "m"
                app.u.cmbr_X = 1;
            end

            value = app.mtr_cg_unit.Value;
            
            if value == "in"
                app.u.mtr_cg = 0.0254;
            elseif value == "ft"
                app.u.mtr_cg = 0.3048;
            elseif value == "cm"
                app.u.mtr_cg = 0.01;
            elseif value == "mm"
                app.u.mtr_cg = 0.001;
            elseif value == "m"
                app.u.mtr_cg = 1;
            end

            value = app.mtr_m_unit.Value;
            
            if value == "lbm"
                app.u.mtr_m = 0.453592;
            elseif value == "oz"
                app.u.mtr_m = 0.0283495;
            elseif value == "g"
                app.u.mtr_m = 0.001;
            elseif value == "kg"
                app.u.mtr_m = 1;
            end

            value = app.P_cmbr_unit.Value;
            
            if value == "psi"
                app.u.P_cmbr = 101325/14.696;
            elseif value == "psf"
                app.u.P_cmbr = 101325/14.696*144;
            elseif value == "atm"
                app.u.P_cmbr = 101325;
            elseif value == "MPa"
                app.u.P_cmbr = 1000000;
            elseif value == "kPa"
                app.u.P_cmbr = 1000;
            elseif value == "Bar"
                app.u.P_cmbr = 100000;
            elseif value == "Pa"
                app.u.P_cmbr = 1;
            end

            value = app.Pa_unit.Value;
            
            if value == "psi"
                app.u.Pa = 101325/14.696;
            elseif value == "psf"
                app.u.Pa = 101325/14.696*144;
            elseif value == "atm"
                app.u.Pa = 101325;
            elseif value == "MPa"
                app.u.Pa = 1000000;
            elseif value == "kPa"
                app.u.Pa = 1000;
            elseif value == "Bar"
                app.u.Pa = 100000;
            elseif value == "Pa"
                app.u.Pa = 1;
            end

            value = app.density_unit.Value;
            
            if value == "lb/in^3"
                app.u.prop_Rho = 1/(2.205*0.0254^3);
            elseif value == "lb/ft^3"
                app.u.prop_Rho = 1/(2.205*0.3048^3);
            elseif value == "g/cm^3"
                app.u.prop_Rho = 1000;
            elseif value == "kg/m^3"
                app.u.prop_Rho = 1;
            end

            value = app.inj_D_unit.Value;
            
            if value == "in"
                app.u.inj_D = 0.0254;
            elseif value == "ft"
                app.u.inj_D = 0.3048;
            elseif value == "cm"
                app.u.inj_D = 0.01;
            elseif value == "mm"
                app.u.inj_D = 0.001;
            elseif value == "m"
                app.u.inj_D = 1;
            end

            value = app.vnt_D_unit.Value;
            
            if value == "in"
                app.u.vnt_D = 0.0254;
            elseif value == "ft"
                app.u.vnt_D = 0.3048;
            elseif value == "cm"
                app.u.vnt_D = 0.01;
            elseif value == "mm"
                app.u.vnt_D = 0.001;
            elseif value == "m"
                app.u.vnt_D = 1;
            end

            value = app.grnID_unit.Value;
            
            if value == "in"
                app.u.grn_ID = 0.0254;
            elseif value == "ft"
                app.u.grn_ID = 0.3048;
            elseif value == "cm"
                app.u.grn_ID = 0.01;
            elseif value == "mm"
                app.u.grn_ID = 0.001;
            elseif value == "m"
                app.u.grn_ID = 1;
            end

            value = app.grnOD_unit.Value;
            
            if value == "in"
                app.u.grn_OD = 0.0254;
            elseif value == "ft"
                app.u.grn_OD = 0.3048;
            elseif value == "cm"
                app.u.grn_OD = 0.01;
            elseif value == "mm"
                app.u.grn_OD = 0.001;
            elseif value == "m"
                app.u.grn_OD = 1;
            end

            value = app.grnL_unit.Value;
            
            if value == "in"
                app.u.grn_L = 0.0254;
            elseif value == "ft"
                app.u.grn_L = 0.3048;
            elseif value == "cm"
                app.u.grn_L = 0.01;
            elseif value == "mm"
                app.u.grn_L = 0.001;
            elseif value == "kg"
                app.u.grn_L = 1;
            end

            value = app.m_O_unit.Value;
            
            if value == "lbm"
                app.u.m_o = 0.453592;
            elseif value == "oz"
                app.u.m_o = 0.0283495;
            elseif value == "g"
                app.u.m_o = 0.001;
            elseif value == "kg"
                app.u.m_o = 1;
            end
            
            % initialize variables for HRAP
            
            app.s.grn_OD = app.GrainOD.Value*app.u.grn_OD;
            app.s.grn_ID = app.GrainID.Value*app.u.grn_ID;
            app.s.grn_L = app.GrainLength.Value*app.u.grn_L;
            app.s.cstar_eff = app.CEfficiency.Value/100;
            if app.RegressionModel.Value == "Constant OF"
                app.s.const_OF = app.ConstantOF.Value;
            end
            app.s.mtr_nm = app.MotorConfiguration.Value;
            app.s.tmax = app.RunTime.Value;
            app.s.tburn = app.BurnTime.Value;
            app.s.dt = app.Timestep.Value;
            app.s.Pa = app.AmbientPressure.Value*app.u.Pa;
            if app.MassProperties.Value == 1 || app.TankVolumeByDimensions.Value == 1
                app.s.tnk_D = app.TankDiameter.Value*app.u.tnk_D;
            end
            if app.TankVolumeByDimensions.Value == 1
                app.s.tnk_V = app.TankLength.Value*app.u.tnk_L*0.25*pi*(app.TankDiameter.Value*app.u.tnk_D)^2;
            else
                app.s.tnk_V = app.TankVolume.Value*app.u.tnk_V;
            end
            if app.ChamberVolumeByDimensions.Value == 1
                app.s.cmbr_V = app.GrainLength.Value*app.u.grn_L*0.25*pi*(app.GrainOD.Value*app.u.grn_OD)^2;
            else
                app.s.cmbr_V = app.ChamberVolume.Value*app.u.cmbr_V;
            end
            if app.RegressionModel.Value == "Constant OF"
                app.s.regression_model = @(s,x) const_OF(s,x);
            elseif app.RegressionModel.Value == "Shifting OF"
                app.s.regression_model = @(s,x) shift_OF(s,x);
                app.s.prop_Reg(1) = app.RegressionCoefficient.Value;
                app.s.prop_Reg(2) = app.RegressionExponent.Value;
                app.s.prop_Reg(3) = app.LengthExponent.Value;
            end
            app.s.noz_Cd = app.NozzleCd.Value;
            app.s.noz_thrt = app.ThroatDiameter.Value*app.u.noz_thrt;
            if app.NozzleDropDown.Value == "Nozzle Expansion Ratio"
                app.s.noz_ER = app.NozzleExit.Value;
            elseif app.NozzleDropDown.Value == "Nozzle Exit Diameter"
                app.s.noz_ER = (app.NozzleExit.Value*app.u.noz_ext)^2/(app.s.noz_thrt)^2;
            end
            app.s.noz_eff = app.NozzleEfficiency.Value/100;
            app.s.inj_CdA = 0.25*pi*(app.InjectorDiameter.Value*app.u.inj_D)^2*app.InjectorCd.Value;
            app.s.inj_N = app.NumberofInjectors.Value;
            if app.VentState.Value == "None"
                app.s.vnt_S = 0;
            elseif app.VentState.Value == "External"
                app.s.vnt_S = 1;
                app.s.vnt_CdA = 0.25*pi*(app.VentDiameter.Value*app.u.vnt_D)^2*app.VentCd.Value;
            else
                app.s.vnt_S = 2;
                app.s.vnt_CdA = 0.25*pi*(app.VentDiameter.Value*app.u.vnt_D)^2*app.VentCd.Value;
            end
            if app.MassProperties.Value == 1
                app.s.mtr_m = app.MotorMass.Value*app.u.mtr_m;
                app.s.mtr_cg = app.MotorCG.Value*app.u.mtr_cg;
                app.s.tnk_X = app.TankLocation.Value*app.u.tnk_X;
                app.s.cmbr_X = app.GrainLocation.Value*app.u.cmbr_X;
                app.s.mp_calc = 1;
            else
                app.s.mp_calc = 0;
            end
            if app.TankDropDown.Value == "Starting Tank Temperature"
                value = app.T_tnk_unit.Value;
                if value == "C"
                    app.x.T_tnk = app.TankCond.Value+273.15;
                elseif value == "R"
                    app.x.T_tnk = app.TankCond.Value/1.8;
                elseif value == "F"
                    app.x.T_tnk = ((app.TankCond.Value-32)/1.8)+273.15;
                else
                    app.x.T_tnk = app.TankCond.Value;
                end
            elseif app.TankDropDown.Value == "Starting Tank Pressure"
                value = app.T_tnk_unit.Value;
                if value == "psi"
                    app.u.T_tnk = 101325/14.696;
                elseif value == "psf"
                    app.u.T_tnk = 101325/14.696*144;
                elseif value == "atm"
                    app.u.T_tnk = 101325;
                elseif value == "MPa"
                    app.u.T_tnk = 1000000;
                elseif value == "kPa"
                    app.u.T_tnk = 1000;
                elseif value == "Bar"
                    app.u.T_tnk = 100000;
                elseif value == "Pa"
                    app.u.T_tnk = 1;
                end
                a1 = -6.71893;
                a2 = 1.35966;
                a3 = -1.3779;
                a4 = -4.051;
                Pc = 7251000;
                Tc = 309.57;
                Pv = @(T) Pc*exp((1/(T/Tc))(a1(1-T/Tc) + a2*(1-(T/Tc))^(3/2) + a3*(1-(T/Tc))^(5/2) + a4*(1-(T/Tc))^5)) - app.TankCond.Value*app.u.T_tnk;
                app.x.T_tnk = fzero(Pv,273.15);
            end

            app.x.ox_props                  = NOX(app.x.T_tnk);
            
            if app.OxidizerDropDown.Value == "Tank Fill Percentage"
                app.x.m_o                   = (app.OxidizerFill.Value/100)*app.s.tnk_V*app.x.ox_props.rho_l + (1-app.OxidizerFill.Value/100)*app.s.tnk_V*app.x.ox_props.rho_v;
            else
                app.x.m_o                   = app.OxidizerFill.Value*app.u.m_o;
            end
            app.x.P_tnk                     = app.x.ox_props.Pv;
            app.x.P_cmbr                    = app.ChamberPressure.Value*app.u.P_cmbr;
            app.x.mdot_o                    = 0;
            app.x.mLiq_new                  = (app.s.tnk_V - (app.x.m_o/app.x.ox_props.rho_v))/((1/app.x.ox_props.rho_l)-(1/app.x.ox_props.rho_v));
            app.x.mLiq_old                  = app.x.mLiq_new + 1;
            app.x.m_f                       = 0.25*pi*(app.s.grn_OD^2 - app.s.grn_ID^2)*app.s.prop_Rho*app.s.grn_L;
            app.x.m_g                       = 1.225*(app.s.cmbr_V - 0.25*pi*(app.s.grn_OD^2 - app.s.grn_ID^2)*app.s.grn_L);
            if app.RegressionModel.Value == "Constant OF"
                app.x.OF                    = app.s.const_OF;
            elseif app.RegressionModel.Value == "Shifting OF"
                app.x.OF                        = 0;
            end
            app.x.mdot_f                    = 0;
            app.x.mdot_n                    = 0;
            app.x.rdot                      = 0;
            app.x.grn_ID                    = app.s.grn_ID;
            
            app.t                           = 0;
            
            app.o.t                         = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.m_o                       = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.P_tnk                     = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.P_cmbr                    = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.mdot_o                    = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.mdot_f                    = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.OF                        = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.grn_ID                    = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.mdot_n                    = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.rdot                      = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.m_f                       = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.F_thr                     = zeros(1,app.s.tmax/app.s.dt + 1);
            app.o.dP                        = zeros(1,app.s.tmax/app.s.dt + 1);
            
            app.o.m_o(1)                    = app.x.m_o;
            app.o.P_tnk(1)                  = app.x.P_tnk;
            app.o.P_cmbr(1)                 = app.x.P_cmbr;
            app.o.mdot_o(1)                 = app.x.mdot_o;
            app.o.mdot_f(1)                 = app.x.mdot_f;
            app.o.OF(1)                     = app.x.OF;
            app.o.grn_ID(1)                 = app.x.grn_ID;
            app.o.mdot_n(1)                 = app.x.mdot_n;
            app.o.rdot(1)                   = app.x.rdot;
            app.o.m_f(1)                    = app.x.m_f;
            
            if app.s.mp_calc == 1
                app.o.m_t                   = zeros(1,app.s.tmax/app.s.dt + 1);
                app.o.cg                    = zeros(1,app.s.tmax/app.s.dt + 1);
            
                mp                          = mass(app.s,app.x);
            
                app.o.m_t(1)                = mp(1);
                app.o.cg(1)                 = mp(2);
            end
            
            % RUN HRAP SIMULATION
            
            [app.s,app.x,app.o,app.t] = sim_loop(app.s,app.x,app.o,app.t);
            
            % Sim Results
            
            totalImpulse = trapz(app.o.t(app.o.F_thr>0),app.o.F_thr(app.o.F_thr>0));

            [motorClass,percent] = impulse(totalImpulse);
            
            %Display Motor Performance
            
            burnTime = app.o.t(sum(app.o.F_thr>0));
            peakF_thr = max(app.o.F_thr);
            averageF_thr = mean(app.o.F_thr(app.o.F_thr>0));
            peakPressure = max(app.o.P_cmbr)/10^5;
            averagePressure = mean(app.o.P_cmbr(app.o.P_cmbr>0))/10^5;
            fuelConsumed = (app.o.m_f(1)-app.o.m_f(end));
            oxidizerConsumed = (app.o.m_o(1)-app.o.m_o(end));
            averageOF = oxidizerConsumed/fuelConsumed;
            intPressure = trapz(app.o.t,app.o.P_cmbr);
            Cstar = intPressure*0.25*pi*app.s.noz_thrt^2/(fuelConsumed+oxidizerConsumed);
            specificImpulse = totalImpulse/(((oxidizerConsumed+fuelConsumed))*9.81);
            fuelLeft = app.x.grn_ID*100;
            
            app.PerformanceSummary.Value = sprintf('Motor Name: %s\n    Propellant: %s\n    Oxidizer Tank Volume: %0.0f cc\n    Burn Time: %0.3f s\n    Peak Thrust: %0.1f N\n    Average Thrust: %0.1f N\n    Total Impulse: %0.2f N-s\n    Peak Chamber Pressure: %0.3f bar\n    Average Chamber Pressure: %0.3f bar\n    Port Diameter at Burnout: %0.3f cm\n    Fuel Consumed: %0.3f kg\n    Oxidizer Consumed: %0.3f kg\n    Average OF Ratio: %0.3f\n    Characteristic Velocity: %0.1f m/s\n    Specific Impulse: %0.1f s\n    Motor Classification: %3.0f%% %s%0.0f', app.s.mtr_nm,app.s.prop_nm,app.s.tnk_V*10^6,burnTime,peakF_thr,averageF_thr,totalImpulse,peakPressure,averagePressure,fuelLeft,fuelConsumed,oxidizerConsumed,averageOF,Cstar,specificImpulse,percent,motorClass,averageF_thr);
            
            app.PlotTitle.Enable = 1;
            app.PlotTitle.Editable = 1;
            app.PlotTitleEditFieldLabel.Enable = 1;
            app.Xaxis.Enable = 1;
            app.Xaxis.Editable = 1;
            app.XaxisDropDownLabel.Enable = 1;
            app.Yaxis.Enable = 1;
            app.Yaxis.Editable = 1;
            app.YaxisDropDownLabel.Enable = 1;
            app.XaxisUnits.Enable = 1;
            app.XaxisUnits.Editable = 1;
            app.XaxisUnitsDropDownLabel.Enable = 1;
            app.YaxisUnits.Enable = 1;
            app.YaxisUnits.Editable = 1;
            app.YaxisUnitsDropDownLabel.Enable = 1;
            app.Legend.Enable = 1;
            app.Legend.Editable = 1;
            app.LegendEditFieldLabel.Enable = 1;
            app.AddPlot.Enable = 1;
            app.ClearPlot.Enable = 1;
            app.SavePlot.Enable = 1;
            app.SaveResults.Enable = 1;
            if app.MassProperties.Value == 1
                app.ExportRSE.Enable = 1;
            end
            app.ExportCSV.Enable = 1;
            
            app.RunSimulation.BackgroundColor = [0.96,0.96,0.96];
            
        end

        % Value changed function: Xaxis
        function x_axis(app, event)
            value = app.Xaxis.Value;
            
            if value == "Time"
                app.XaxisUnits.Items = {'s'};
            elseif value == "Oxidizer Mass"
                app.XaxisUnits.Items = {'lbm','kg','g','oz'};
            elseif value == "Fuel Mass"
                app.XaxisUnits.Items = {'lbm','kg','g','oz'};
            elseif value == "Total Motor Mass"
                app.XaxisUnits.Items = {'lbm','kg','g','oz'};
            elseif value == "Center of Mass"
                app.XaxisUnits.Items = {'in','ft','mm','cm','m'};
            elseif value == "Chamber Pressure"
                app.XaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
            elseif value == "Total Propellant Mass"
                app.XaxisUnits.Items = {'lbm','kg','g','oz'};
            elseif value == "Tank Pressure"
                app.XaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
            elseif value == "Oxidizer Mass Flow Rate"
                app.XaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
            elseif value == "Fuel Mass Flow Rate"
                app.XaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
            elseif value == "Total Mass Flow Rate"
                app.XaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
            elseif value == "OF Ratio"
                app.XaxisUnits.Items = {''};
            elseif value == "Regression Rate"
                app.XaxisUnits.Items = {'in/s','ft/s','mm/s','cm/s','m/s'};
            elseif value == "Thrust"
                app.XaxisUnits.Items = {'N','lbf','kgf'};
            elseif value == "Injector Pressure Drop"
                app.XaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
            end
        end

        % Value changed function: Yaxis
        function y_axis(app, event)
            value = app.Yaxis.Value;
            
            if value == "Time"
                app.YaxisUnits.Items = {'s'};
                app.Legend.Value = 'Time';
            elseif value == "Oxidizer Mass"
                app.YaxisUnits.Items = {'lbm','kg','g','oz'};
                app.Legend.Value = 'Oxidizer Mass';
            elseif value == "Fuel Mass"
                app.YaxisUnits.Items = {'lbm','kg','g','oz'};
                app.Legend.Value = 'Fuel Mass';
            elseif value == "Total Motor Mass"
                app.YaxisUnits.Items = {'lbm','kg','g','oz'};
                app.Legend.Value = 'Total Motor Mass';
            elseif value == "Center of Mass"
                app.YaxisUnits.Items = {'in','ft','mm','cm','m'};
                app.Legend.Value = 'Center of Mass';
            elseif value == "Chamber Pressure"
                app.YaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
                app.Legend.Value = 'Chamber Pressure';
            elseif value == "Total Propellant Mass"
                app.YaxisUnits.Items = {'lbm','kg','g','oz'};
                app.Legend.Value = 'Total Propellant Mass';
            elseif value == "Tank Pressure"
                app.YaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
                app.Legend.Value = 'Tank Pressure';
            elseif value == "Oxidizer Mass Flow Rate"
                app.YaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
                app.Legend.Value = 'Oxidizer Mass Flow Rate';
            elseif value == "Fuel Mass Flow Rate"
                app.YaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
                app.Legend.Value = 'Fuel Mass Flow Rate';
            elseif value == "Total Mass Flow Rate"
                app.YaxisUnits.Items = {'lbm/s','kg/s','g/s','oz/s'};
                app.Legend.Value = 'Total Mass Flow Rate';
            elseif value == "OF Ratio"
                app.YaxisUnits.Items = {''};
                app.Legend.Value = 'OF Ratio';
            elseif value == "Regression Rate"
                app.YaxisUnits.Items = {'in/s','ft/s','mm/s','cm/s','m/s'};
                app.Legend.Value = 'Regression Rate';
            elseif value == "Thrust"
                app.YaxisUnits.Items = {'N','lbf','kgf'};
                app.Legend.Value = 'Thrust';
            elseif value == "Injector Pressure Drop"
                app.YaxisUnits.Items = {'psi','psf','atm','Pa','kPa','Bar','MPa'};
                app.Legend.Value = 'Injector Pressure Drop';
            end
        end

        % Button pushed function: AddPlot
        function plot(app, event)
            value = app.Xaxis.Value;
            
            if value == "Time"
                app.plt.x = app.o.t;
            elseif value == "Oxidizer Mass"
                app.plt.x = app.o.m_o;
            elseif value == "Fuel Mass"
                app.plt.x = app.o.m_f;
            elseif value == "Total Motor Mass"
                app.plt.x = app.o.m_f+app.o.m_o+app.o.m_t;
            elseif value == "Center of Mass"
                app.plt.x = app.o.cg;
            elseif value == "Chamber Pressure"
                app.plt.x = app.o.P_cmbr;
            elseif value == "Total Propellant Mass"
                app.plt.x = app.o.m_f+app.o.m_o;
            elseif value == "Tank Pressure"
                app.plt.x = app.o.P_tnk;
            elseif value == "Oxidizer Mass Flow Rate"
                app.plt.x = app.o.mdot_o;
            elseif value == "Fuel Mass Flow Rate"
                app.plt.x = app.o.mdot_f;
            elseif value == "Total Mass Flow Rate"
                app.plt.x = app.o.mdot_n;
            elseif value == "OF Ratio"
                app.plt.x = app.o.OF;
            elseif value == "Regression Rate"
                app.plt.x = app.o.rdot;
            elseif value == "Thrust"
                app.plt.x = app.o.F_thr;
            elseif value == "Injector Pressure Drop"
                app.plt.x = app.o.P_tnk - app.o.P_cmbr;
            end
            
            value = app.Yaxis.Value;
            
            if value == "Time"
                app.plt.y = app.o.t;
            elseif value == "Oxidizer Mass"
                app.plt.y = app.o.m_o;
            elseif value == "Fuel Mass"
                app.plt.y = app.o.m_f;
            elseif value == "Total Motor Mass"
                app.plt.y = app.o.m_f+app.o.m_o+app.o.m_t;
            elseif value == "Center of Mass"
                app.plt.y = app.o.cg;
            elseif value == "Chamber Pressure"
                app.plt.y = app.o.P_cmbr;
            elseif value == "Total Propellant Mass"
                app.plt.y = app.o.m_f+app.o.m_o;
            elseif value == "Tank Pressure"
                app.plt.y = app.o.P_tnk;
            elseif value == "Oxidizer Mass Flow Rate"
                app.plt.y = app.o.mdot_o;
            elseif value == "Fuel Mass Flow Rate"
                app.plt.y = app.o.mdot_f;
            elseif value == "Total Mass Flow Rate"
                app.plt.y = app.o.mdot_n;
            elseif value == "OF Ratio"
                app.plt.y = app.o.OF;
            elseif value == "Regression Rate"
                app.plt.y = app.o.rdot;
            elseif value == "Thrust"
                app.plt.y = app.o.F_thr;
            elseif value == "Injector Pressure Drop"
                app.plt.y = app.o.P_tnk - app.o.P_cmbr;
            end
            
            value = app.XaxisUnits.Value;
            
            if value == "lbm"
            elseif value == "kg"
                app.u.x_axis = 1;
            elseif value == "g"
                app.u.x_axis = 1/0.001;
            elseif value == "oz"
                app.u.x_axis = 1/0.0283495;
            elseif value == "in"
                app.u.x_axis = 1/0.0254;
            elseif value == "ft"
                app.u.x_axis = 1/0.3048;
            elseif value == "mm"
                app.u.x_axis = 1/0.001;
            elseif value == "cm"
                app.u.x_axis = 1/0.01';
            elseif value == "m"
                app.u.x_axis = 1;
            elseif value == "psi"
                app.u.x_axis = 1/6894.76;
            elseif value == "psf"
                app.u.x_axis = 1/147.8802777777778;
            elseif value == "atm"
                app.u.x_axis = 1/101325;
            elseif value == "Pa"
                app.u.x_axis = 1;
            elseif value == "kPa"
                app.u.x_axis = 1/1000;
            elseif value == "Bar"
                app.u.x_axis = 1/100000;
            elseif value == "MPa"
                app.u.x_axis = 1/1000000;
            elseif value == "lbm/s"
                app.u.x_axis = 1/0.453592;
            elseif value == "kg/s"
                app.u.x_axis = 1;
            elseif value == "g/s"
                app.u.x_axis = 1/0.001;
            elseif value == "oz/s"
                app.u.x_axis = 1/0.0283495;
            elseif value == "in/s"
                app.u.x_axis = 1/0.0254;
            elseif value == "ft/s"
                app.u.x_axis = 1/0.3048;
            elseif value == "mm/s"
                app.u.x_axis = 1/0.001;
            elseif value == "cm/s"
                app.u.x_axis = 1/0.01;
            elseif value == "m/s"
                app.u.x_axis = 1;
            elseif value == "N"
                app.u.x_axis = 1;
            elseif value == "lbf"
                app.u.x_axis = 1/4.44822;
            elseif value == "kgf"
                app.u.x_axis = 1/9.80665;
            else
                app.u.x_axis = 1;
            end
            
            value = app.YaxisUnits.Value;
            
            if value == "lbm"
            elseif value == "kg"
                app.u.y_axis = 1;
            elseif value == "g"
                app.u.y_axis = 1000;
            elseif value == "oz"
                app.u.y_axis = 35.28;
            elseif value == "in"
                app.u.y_axis = 1/0.0254;
            elseif value == "ft"
                app.u.y_axis = 1/0.3048;
            elseif value == "mm"
                app.u.y_axis = 1000;
            elseif value == "cm"
                app.u.y_axis = 100;
            elseif value == "m"
                app.u.y_axis = 1;
            elseif value == "psi"
                app.u.y_axis = 1/6894.76;
            elseif value == "psf"
                app.u.y_axis = 1/147.8802777777778;
            elseif value == "atm"
                app.u.y_axis = 1/101325;
            elseif value == "Pa"
                app.u.y_axis = 1;
            elseif value == "kPa"
                app.u.y_axis = 0.001;
            elseif value == "Bar"
                app.u.y_axis = 0.00001;
            elseif value == "MPa"
                app.u.y_axis = 0.000001;
            elseif value == "lbm/s"
                app.u.y_axis = 1/0.453592;
            elseif value == "kg/s"
                app.u.y_axis = 1;
            elseif value == "g/s"
                app.u.y_axis = 1/0.001;
            elseif value == "oz/s"
                app.u.y_axis = 1/0.0283495;
            elseif value == "in/s"
                app.u.y_axis = 1/0.0254;
            elseif value == "ft/s"
                app.u.y_axis = 1/0.3048;
            elseif value == "mm/s"
                app.u.y_axis = 1/0.001;
            elseif value == "cm/s"
                app.u.y_axis = 1/0.01;
            elseif value == "m/s"
                app.u.y_axis = 1;
            elseif value == "N"
                app.u.y_axis = 1;
            elseif value == "lbf"
                app.u.y_axis = 1/4.44822;
            elseif value == "kgf"
                app.u.y_axis = 1/9.80665;
            else
                app.u.y_axis = 1;
            end
            
            plot(app.UIAxes,(app.plt.x.*app.u.x_axis),(app.plt.y.*app.u.y_axis),'DisplayName',app.Legend.Value) %#ok<ADMTHDINV> 
            app.UIAxes.Title.String = app.PlotTitle.Value;
   
            xvalue = app.Xaxis.Value;
            if xvalue == "Time"
                app.plt.xlabel = append('Time (',app.XaxisUnits.Value,')');
            elseif xvalue == "Oxidizer Mass"
                app.plt.xlabel = append('Mass (',app.XaxisUnits.Value,')');
            elseif xvalue == "Fuel Mass"
                app.plt.xlabel = append('Mass (',app.XaxisUnits.Value,')');
            elseif xvalue == "Total Mass"
                app.plt.xlabel = append('Mass (',app.XaxisUnits.Value,')');
            elseif xvalue == "Center of Mass"
                app.plt.xlabel = append('Center of Mass (',app.XaxisUnits.Value,')');
            elseif xvalue == "Chamber Pressure"
                app.plt.xlabel = append('Pressure (',app.XaxisUnits.Value,')');
            elseif xvalue == "Total Propellant Mass"
                app.plt.xlabel = append('Mass (',app.XaxisUnits.Value,')');
            elseif xvalue == "Tank Pressure"
                app.plt.xlabel = append('Pressure (',app.XaxisUnits.Value,')');
            elseif xvalue == "Oxidizer Mass Flow Rate"
                app.plt.xlabel = append('Mass Flow Rate (',app.XaxisUnits.Value,')');
            elseif xvalue == "Fuel Mass Flow Rate"
                app.plt.xlabel = append('Mass Flow Rate (',app.XaxisUnits.Value,')');
            elseif xvalue == "Total Mass Flow Rate"
                app.plt.xlabel = append('Mass Flow Rate (',app.XaxisUnits.Value,')');
            elseif xvalue == "OF Ratio"
                app.plt.xlabel = 'OF Ratio';
            elseif xvalue == "Regression Rate"
                app.plt.xlabel = append('Regression Rate (',app.XaxisUnits.Value,')');
            elseif xvalue == "Thrust"
                app.plt.xlabel = append('Thrust (',app.XaxisUnits.Value,')');
            elseif xvalue == "Injector Pressure Drop"
                app.plt.xlabel = append('Pressure (',app.XaxisUnits.Value,')');
            end
            
            yvalue = app.Yaxis.Value;
            if yvalue == "Time"
                app.plt.ylabel = append('Time (',app.YaxisUnits.Value,')');
            elseif yvalue == "Oxidizer Mass"
                app.plt.ylabel = append('Mass (',app.YaxisUnits.Value,')');
            elseif yvalue == "Fuel Mass"
                app.plt.ylabel = append('Mass (',app.YaxisUnits.Value,')');
            elseif yvalue == "Total Mass"
                app.plt.ylabel = append('Mass (',app.YaxisUnits.Value,')');
            elseif yvalue == "Center of Mass"
                app.plt.ylabel = append('Center of Mass (',app.YaxisUnits.Value,')');
            elseif yvalue == "Chamber Pressure"
                app.plt.ylabel = append('Pressure (',app.YaxisUnits.Value,')');
            elseif yvalue == "Total Propellant Mass"
                app.plt.ylabel = append('Mass (',app.YaxisUnits.Value,')');
            elseif yvalue == "Tank Pressure"
                app.plt.ylabel = append('Pressure (',app.YaxisUnits.Value,')');
            elseif yvalue == "Oxidizer Mass Flow Rate"
                app.plt.ylabel = append('Mass Flow Rate (',app.YaxisUnits.Value,')');
            elseif yvalue == "Fuel Mass Flow Rate"
                app.plt.ylabel = append('Mass Flow Rate (',app.YaxisUnits.Value,')');
            elseif yvalue == "Total Mass Flow Rate"
                app.plt.ylabel = append('Mass Flow Rate (',app.YaxisUnits.Value,')');
            elseif yvalue == "OF Ratio"
                app.plt.ylabel = 'OF Ratio';
            elseif yvalue == "Regression Rate"
                app.plt.ylabel = append('Regression Rate (',app.YaxisUnits.Value,')');
            elseif yvalue == "Thrust"
                app.plt.ylabel = append('Thrust (',app.YaxisUnits.Value,')');
            elseif yvalue == "Injector Pressure Drop"
                app.plt.ylabel = append('Pressure (',app.YaxisUnits.Value,')');
            end
            
            app.UIAxes.XLabel.String = app.plt.xlabel;
            app.UIAxes.YLabel.String = app.plt.ylabel;
            hold(app.UIAxes,"on")
            legend(app.UIAxes)
        end

        % Button pushed function: ClearPlot
        function clear_plot(app, event)
            reset(app.UIAxes);
            cla(app.UIAxes);
        end

        % Button pushed function: SavePlot
        function save_plot(app, event)
            [file,path] = uiputfile('*.png','Save Plot',sprintf('%s\\output\\%s.png',app.appDir,app.PlotTitle.Value));

            if isequal(file,0)
            else
                filepath = convertCharsToStrings(fullfile(path,file));
                exportgraphics(app.UIAxes,filepath);
            end
        end

        % Button pushed function: SaveResults
        function save_results(app, event)
            totalImpulse = trapz(app.o.t(app.o.F_thr>0),app.o.F_thr(app.o.F_thr>0));
            [motorClass,percent] = impulse(totalImpulse);
            burnTime = app.o.t(sum(app.o.F_thr>0));
            peakF_thr = max(app.o.F_thr);
            averageF_thr = mean(app.o.F_thr(app.o.F_thr>0));
            peakPressure = max(app.o.P_cmbr)/10^5;
            averagePressure = mean(app.o.P_cmbr(app.o.P_cmbr>0))/10^5;
            fuelConsumed = (app.o.m_f(1)-app.o.m_f(end));
            oxidizerConsumed = (app.o.m_o(1)-app.o.m_o(end));
            averageOF = oxidizerConsumed/fuelConsumed;
            intPressure = trapz(app.o.t,app.o.P_cmbr);
            Cstar = intPressure*0.25*pi*app.s.noz_thrt^2/(fuelConsumed+oxidizerConsumed);
            specificImpulse = totalImpulse/(((oxidizerConsumed+fuelConsumed))*9.81);
            fuelLeft = app.x.grn_ID*100;

            [file,path] = uiputfile('*.txt','Save Results Summary',sprintf('%s\\output\\sim_results.txt',app.appDir));

            if isequal(file,0)
            else
                fileID = fopen(convertCharsToStrings(fullfile(path,file)),'w');
                fprintf(fileID,'Motor Name: %s\n    Propellant: %s\n    Oxidizer Tank Volume: %0.0f cc\n    Burn Time: %0.3f s\n    Peak Thrust: %0.1f N\n    Average Thrust: %0.1f N\n    Total Impulse: %0.2f N-s\n    Peak Chamber Pressure: %0.3f bar\n    Average Chamber Pressure: %0.3f bar\n    Port Diameter at Burnout: %0.3f cm\n    Fuel Consumed: %0.3f kg\n    Oxidizer Consumed: %0.3f kg\n    Average OF Ratio: %0.3f\n    Characteristic Velocity: %0.1f m/s\n    Specific Impulse: %0.1f s\n    Motor Classification: %3.0f%% %s%0.0f', app.s.mtr_nm,app.s.prop_nm,app.s.tnk_V*10^6,burnTime,peakF_thr,averageF_thr,totalImpulse,peakPressure,averagePressure,fuelLeft,fuelConsumed,oxidizerConsumed,averageOF,Cstar,specificImpulse,percent,motorClass,averageF_thr);
                fclose('all');
            end
        end

        % Button pushed function: ExportRSE
        function save_rse(app, event)
            if app.MassProperties.Value == 1
                %Input template
                cg = app.o.cg*1000; %array of cg (millimeters from forward end of motor) as function of time
                f = app.o.F_thr; %array of force (newtons) as function of time
                m = app.o.m_t*1000; %array of mass (grams) as function of time
                t = app.o.t; %array of time (seconds) for other variables
                Itot = trapz(app.o.t(app.o.F_thr>0),app.o.F_thr(app.o.F_thr>0)); %total impulse, newton-seconds
                propWt = ((app.o.m_f(1)-app.o.m_f(end)) + (app.o.m_o(1)-app.o.m_o(end)))*1000; %propellant weight, grams
                Isp = Itot/((propWt*1000)*9.81); %specific impulse, seconds
                Type = 'Hybrid';
                avgThrust = mean(app.o.F_thr); %average thrust, newtons
                burn_time = max(app.o.t); %burn time, seconds
                motorClass = impulse(Itot);
                prompt = {'Enter Motor Diameter in mm:','Enter Motor Length in mm:','Enter Motor Manufacturer:','Input Motor Notes:'};
                dlgtitle = 'RSE Export';
                dims = [1 12; 1 12; 1 50; 5 50];
                definput = {'0','0','Research',''};
                answer = inputdlg(prompt,dlgtitle,dims,definput);
                code = sprintf('%s%0.0f',motorClass,avgThrust);
                dia = str2double(answer{1}); %motor diameter, millimeters
                exitDia = (app.s.noz_thrt*app.s.noz_ER^0.5)*1000; %nozzle exit diameter, millimeters
                initWt = app.o.m_t(1)*1000; %loaded motor weight before ignition, grams
                len = str2double(answer{2}); %motor length, millimeters
                massFrac = (app.o.m_t(1)-app.o.m_t(length(app.o.m_t)))/app.o.m_t(1); %mass fraction, ratio of propellant mass to total mass
                mfg = answer{3};
                peakThrust = max(app.o.F_thr); %peak thrust, newtons
                throatDia = app.s.noz_thrt*1000;
                comments = answer{4};

                [file,path] = uiputfile('*.rse','Save RSE File',sprintf('%s\\output\\%s.rse',app.appDir,code));

                if isequal(file,0)
                else
                    fileID = fopen(convertCharsToStrings(fullfile(path,file)),'w');
                    fprintf(fileID,'<engine-database>\n	<engine-list>\n');
                    fprintf(fileID,'	<engine FDiv="10" FFix="1" FStep="-1." Isp="%f" Itot="%f" Type="%s" auto-calc-cg="0" auto-calc-mass="0" avgThrust="%f" burn-time="%f" cgDiv="10" cgFix="1" cgStep="-1." code="%s" delays="0" dia="%f" exitDia="%f" initWt="%f" len="%f" mDiv="10" mFix="1" mStep="-1." massFrac="%f" mfg="%s" peakThrust="%f" propWt="%f" tDiv="10" tFix="1" tStep="-1." throatDia="%f">',Isp, Itot, Type, avgThrust, burn_time, code, dia, exitDia, initWt, len, massFrac, mfg, peakThrust, propWt, throatDia);
                    fprintf(fileID,'\n	<comments> \n');
                    fprintf(fileID,'		%s\n',comments);
                    fprintf(fileID,'	</comments>\n');
                    fprintf(fileID,'	<data>\n');
            
                    for i = 1:length(cg)
                        fprintf(fileID,'		<eng-data cg="%f" f="%f" m="%f" t="%f"/>\n',cg(i),f(i),m(i),t(i));
                    end
            
                    fprintf(fileID,'	</data>\n');
                    fprintf(fileID,'	</engine>\n');
                    fprintf(fileID,' 	</engine-list>\n');
                    fprintf(fileID,'</engine-database>\n');
                    fclose('all');
                end
            end
        end

        % Button pushed function: ExportCSV
        function save_csv(app, event)
            [file,path] = uiputfile('*.csv','Save CSV Output
