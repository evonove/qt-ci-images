function Controller() {
    installer.autoRejectMessageBoxes();
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();
    widget.deselectAll();
    widget.selectComponent("qt.58.gcc_64");
    widget.selectComponent("qt.58.android_armv7");
    widget.selectComponent("qt.58.qtcharts");
    widget.selectComponent("qt.58.qtdatavis3d");
    widget.selectComponent("qt.58.qtpurchasing");
    widget.selectComponent("qt.58.qtvirtualkeyboard");
    widget.selectComponent("qt.58.qtwebengine");
    widget.selectComponent("qt.58.qtgamepad");
    widget.selectComponent("qt.58.qtnetworkauth");
    widget.selectComponent("qt.58.qtspeech");
    gui.clickButton(buttons.NextButton);

}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
    var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
    if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
        checkBoxForm.launchQtCreatorCheckBox.checked = false;
    }
    gui.clickButton(buttons.FinishButton);
}

