mdl = "RLWaki";
blk = mdl + "RL Agent";

numObs = 25;
obsInfo = rlNumericSpec([numObs 1]);
obsInfo.Name = "observations";

numAct = 4;
actInfo = rlNumericSpec([numAct 1], 'LoweLimit', -1, 'UpperLimit', 1);
actInfo.Name = 'torque';

env = rlSimulinkEnv(mdl, blk, odsInfo, actInfo);

