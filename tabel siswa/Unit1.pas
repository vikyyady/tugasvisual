unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    qry1: TADOQuery;
    con1: TADOConnection;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    dtp1: TDateTimePicker;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  strSQL: string;
begin
  // Menjalankan perintah INSERT INTO menggunakan ExecSQL
  strSQL := 'INSERT INTO tabel_siswa (id_siswa, nis, nim, nama_siswa, nik, tempat_lahir, tanggal_lahir, jenis_kelamin, alamat, no_telepon, status) ' +
            'VALUES (:Nilai1, :Nilai2, :Nilai3, :Nilai4, :Nilai5, :Nilai6, :Nilai7, :Nilai8, :Nilai9, :Nilai10, :Nilai11)';
  qry1.SQL.Text := strSQL;
  qry1.Parameters.ParamByName('Nilai1').Value := Edit1.Text;
  qry1.Parameters.ParamByName('Nilai2').Value := Edit2.Text;
  qry1.Parameters.ParamByName('Nilai3').Value := Edit3.Text;
  qry1.Parameters.ParamByName('Nilai4').Value := Edit4.Text;
  qry1.Parameters.ParamByName('Nilai5').Value := Edit5.Text;
  qry1.Parameters.ParamByName('Nilai6').Value := Edit6.Text;
  qry1.Parameters.ParamByName('Nilai7').Value := FormatDateTime('yyyy-mm-dd', dtp1.Date);
  qry1.Parameters.ParamByName('Nilai8').Value := Edit7.Text;
  qry1.Parameters.ParamByName('Nilai9').Value := Edit8.Text;
  qry1.Parameters.ParamByName('Nilai10').Value := Edit9.Text;
  qry1.Parameters.ParamByName('Nilai11').Value := Edit10.Text;

  try
    qry1.ExecSQL;
    ShowMessage('Data berhasil ditambahkan.');

    // Memperbarui TDBGrid dengan menjalankan perintah SELECT terpisah
    strSQL := 'SELECT * FROM tabel_siswa';
    qry1.SQL.Text := strSQL;
    qry1.Active := True;
    ds1.DataSet := qry1;
  except
    on E: Exception do
      ShowMessage('Error saat menambahkan data: ' + E.Message);
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if not qry1.IsEmpty then
  begin
    if MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        qry1.Delete;
        ShowMessage('Data berhasil dihapus.');
      except
        on E: Exception do
          ShowMessage('Error saat menghapus data: ' + E.Message);
      end;
    end;
  end
  else
    ShowMessage('Tidak ada data yang dipilih.');
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  fieldName: string;
  editedField: TField;
begin
  if not qry1.IsEmpty then
  begin
    try
      qry1.Edit;

      // Mendapatkan nama kolom yang diubah
      editedField := qry1.FindField(dbgrd1.SelectedField.FieldName);
      if Assigned(editedField) then
      begin
        fieldName := editedField.FieldName;

        // Memperbarui nilai kolom yang diubah
        if fieldName = 'id_siswa' then
        begin
          // Check if Edit1.Text is not empty before updating 'id_siswa' field
          if Edit1.Text <> '' then
            qry1.FieldByName(fieldName).Value := Edit1.Text;
        end
        else if fieldName = 'nis' then
          qry1.FieldByName(fieldName).Value := Edit2.Text
        else if fieldName = 'nim' then
          qry1.FieldByName(fieldName).Value := Edit3.Text
        else if fieldName = 'nama_siswa' then
          qry1.FieldByName(fieldName).Value := Edit4.Text
        else if fieldName = 'nik' then
          qry1.FieldByName(fieldName).Value := Edit5.Text
        else if fieldName = 'tempat_lahir' then
          qry1.FieldByName(fieldName).Value := Edit6.Text
        else if fieldName = 'tanggal_lahir' then
          qry1.FieldByName(fieldName).Value := dtp1.Date
        else if fieldName = 'jenis_kelamin' then
          qry1.FieldByName(fieldName).Value := Edit7.Text
        else if fieldName = 'alamat' then
          qry1.FieldByName(fieldName).Value := Edit8.Text
        else if fieldName = 'no_telepon' then
          qry1.FieldByName(fieldName).Value := Edit9.Text
        else if fieldName = 'status' then
          qry1.FieldByName(fieldName).Value := Edit10.Text;
        // Tambahkan kondisi untuk kolom lainnya jika perlu

        qry1.Post;
        ShowMessage('Data berhasil diperbarui.');
      end;
    except
      on E: Exception do
        ShowMessage('Error saat memperbarui data: ' + E.Message);
    end;
  end
  else
    ShowMessage('Tidak ada data yang dipilih.');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 Close
end;

end.

