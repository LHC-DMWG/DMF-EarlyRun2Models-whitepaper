{
//=========Macro generated from canvas: canvas3/canvas3
//=========  (Thu May 28 17:12:21 2015) by ROOT version5.34/25
   TCanvas *canvas3 = new TCanvas("canvas3", "canvas3",10,32,700,500);
   gStyle->SetOptStat(0);
   gStyle->SetOptTitle(0);
   canvas3->SetHighLightColor(2);
   canvas3->Range(-1.945783,-0.1195984,10.10241,0.6278916);
   canvas3->SetFillColor(0);
   canvas3->SetBorderMode(0);
   canvas3->SetBorderSize(2);
   canvas3->SetTickx(1);
   canvas3->SetTicky(1);
   canvas3->SetLeftMargin(0.12);
   canvas3->SetRightMargin(0.05);
   canvas3->SetTopMargin(0.05);
   canvas3->SetBottomMargin(0.16);
   canvas3->SetFrameBorderMode(0);
   canvas3->SetFrameBorderMode(0);
   
   TH1F *histo_n_jets50__7 = new TH1F("histo_n_jets50__7","histo_n_jets50",10,-0.5,9.5);
   histo_n_jets50__7->SetBinContent(2,0.5623972);
   histo_n_jets50__7->SetBinContent(3,0.2770886);
   histo_n_jets50__7->SetBinContent(4,0.1123898);
   histo_n_jets50__7->SetBinContent(5,0.03557017);
   histo_n_jets50__7->SetBinContent(6,0.008817815);
   histo_n_jets50__7->SetBinContent(7,0.002839635);
   histo_n_jets50__7->SetBinContent(8,0.0007472725);
   histo_n_jets50__7->SetBinContent(9,0.0001494545);
   histo_n_jets50__7->SetBinError(2,0.009168031);
   histo_n_jets50__7->SetBinError(3,0.006435226);
   histo_n_jets50__7->SetBinError(4,0.004098433);
   histo_n_jets50__7->SetBinError(5,0.002305672);
   histo_n_jets50__7->SetBinError(6,0.001147982);
   histo_n_jets50__7->SetBinError(7,0.000651457);
   histo_n_jets50__7->SetBinError(8,0.0003341904);
   histo_n_jets50__7->SetBinError(9,0.0001494545);
   histo_n_jets50__7->SetEntries(6691);
   histo_n_jets50__7->SetDirectory(0);
   histo_n_jets50__7->SetStats(0);

   Int_t ci;      // for color index setting
   TColor *color; // for color definition with alpha
   ci = TColor::GetColor("#0000ff");
   histo_n_jets50__7->SetLineColor(ci);
   histo_n_jets50__7->SetLineWidth(2);
   histo_n_jets50__7->SetMarkerStyle(20);
   histo_n_jets50__7->SetMarkerSize(1.2);
   histo_n_jets50__7->GetXaxis()->SetTitle("Jet multiplicity");
   histo_n_jets50__7->GetXaxis()->SetLabelFont(42);
   histo_n_jets50__7->GetXaxis()->SetLabelSize(0.05);
   histo_n_jets50__7->GetXaxis()->SetTitleSize(0.05);
   histo_n_jets50__7->GetXaxis()->SetTitleFont(42);
   histo_n_jets50__7->GetYaxis()->SetTitle("Events");
   histo_n_jets50__7->GetYaxis()->SetLabelFont(42);
   histo_n_jets50__7->GetYaxis()->SetLabelSize(0.05);
   histo_n_jets50__7->GetYaxis()->SetTitleSize(0.05);
   histo_n_jets50__7->GetYaxis()->SetTitleFont(42);
   histo_n_jets50__7->GetZaxis()->SetLabelFont(42);
   histo_n_jets50__7->GetZaxis()->SetLabelSize(0.05);
   histo_n_jets50__7->GetZaxis()->SetTitleSize(0.05);
   histo_n_jets50__7->GetZaxis()->SetTitleFont(42);
   histo_n_jets50__7->Draw("HIST");
   
   TH1F *histo_n_jets400__8 = new TH1F("histo_n_jets400__8","histo_n_jets400",10,-0.5,9.5);
   histo_n_jets400__8->SetBinContent(2,0.5640463);
   histo_n_jets400__8->SetBinContent(3,0.2749765);
   histo_n_jets400__8->SetBinContent(4,0.1152521);
   histo_n_jets400__8->SetBinContent(5,0.03398058);
   histo_n_jets400__8->SetBinContent(6,0.00923896);
   histo_n_jets400__8->SetBinContent(7,0.002192296);
   histo_n_jets400__8->SetBinContent(8,0.0003131851);
   histo_n_jets400__8->SetBinError(2,0.009398162);
   histo_n_jets400__8->SetBinError(3,0.006561956);
   histo_n_jets400__8->SetBinError(4,0.004248249);
   histo_n_jets400__8->SetBinError(5,0.002306752);
   histo_n_jets400__8->SetBinError(6,0.00120281);
   histo_n_jets400__8->SetBinError(7,0.0005859157);
   histo_n_jets400__8->SetBinError(8,0.0002214553);
   histo_n_jets400__8->SetEntries(6386);
   histo_n_jets400__8->SetDirectory(0);
   histo_n_jets400__8->SetStats(0);

   ci = TColor::GetColor("#ff0000");
   histo_n_jets400__8->SetLineColor(ci);
   histo_n_jets400__8->SetLineWidth(2);
   histo_n_jets400__8->SetMarkerStyle(20);
   histo_n_jets400__8->SetMarkerSize(1.2);
   histo_n_jets400__8->GetXaxis()->SetLabelFont(42);
   histo_n_jets400__8->GetXaxis()->SetLabelSize(0.05);
   histo_n_jets400__8->GetXaxis()->SetTitleSize(0.05);
   histo_n_jets400__8->GetXaxis()->SetTitleFont(42);
   histo_n_jets400__8->GetYaxis()->SetLabelFont(42);
   histo_n_jets400__8->GetYaxis()->SetLabelSize(0.05);
   histo_n_jets400__8->GetYaxis()->SetTitleSize(0.05);
   histo_n_jets400__8->GetYaxis()->SetTitleFont(42);
   histo_n_jets400__8->GetZaxis()->SetLabelFont(42);
   histo_n_jets400__8->GetZaxis()->SetLabelSize(0.05);
   histo_n_jets400__8->GetZaxis()->SetTitleSize(0.05);
   histo_n_jets400__8->GetZaxis()->SetTitleFont(42);
   histo_n_jets400__8->Draw("SAMEHIST");
   
   TLegend *leg = new TLegend(0.55,0.65,0.9,0.9,NULL,"brNDC");
   leg->SetBorderSize(0);
   leg->SetTextFont(62);
   leg->SetLineColor(1);
   leg->SetLineStyle(1);
   leg->SetLineWidth(1);
   leg->SetFillColor(0);
   leg->SetFillStyle(0);
   TLegendEntry *entry=leg->AddEntry("histo_n_jets50","EFT D5 m_{DM} = 1 TeV","l");

   ci = TColor::GetColor("#0000ff");
   entry->SetLineColor(ci);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(62);
   entry=leg->AddEntry("histo_n_jets400","Z' m_{DM} = 1 TeV","l");

   ci = TColor::GetColor("#ff0000");
   entry->SetLineColor(ci);
   entry->SetLineStyle(1);
   entry->SetLineWidth(2);
   entry->SetMarkerColor(1);
   entry->SetMarkerStyle(21);
   entry->SetMarkerSize(1);
   entry->SetTextFont(62);
   leg->Draw();
   canvas3->Modified();
   canvas3->cd();
   canvas3->SetSelected(canvas3);
}
