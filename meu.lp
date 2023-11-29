% probabilistic facts
0.3::rain.
0.5::wind.

% decision facts
?::umbrella.
?::raincoat.

broken_umbrella :- umbrella, rain, wind.
dry :- rain, raincoat.
dry :- rain, umbrella, \+ broken_umbrella.
dry :- \+ rain.

% utilities
utility(broken_umbrella, -40).
utility(raincoat, -20).
utility(umbrella, -2).
utility(dry, 60).