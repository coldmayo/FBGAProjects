<?xml version="1.0" encoding="UTF-8"?>
<project name="clock" board="Mojo V3" language="Lucid">
  <files>
    <src>multi_dec_ctr.luc</src>
    <src>decimal_counter.luc</src>
    <src>bin_to_dec.luc</src>
    <src>stopwatch.luc</src>
    <src>seven_seg.luc</src>
    <src>multi_seven_seg.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>sec_to_mins.luc</src>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>cclk_detector.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
