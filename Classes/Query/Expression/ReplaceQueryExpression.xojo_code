#tag Class
Protected Class ReplaceQueryExpression
Implements QueryExpression
	#tag Method, Flags = &h0
		Function Compile(pLastQueryExpression As QueryExpression = Nil) As String
		  #Pragma Unused pLastQueryExpression
		  
		  Dim pColumns As String
		  
		  // No columns makes a simple insertion
		  If mColumns.Ubound > -1 Then
		    pColumns = " ( " + QueryCompiler.Columns(mColumns) + " )"
		  End If
		  
		  Return "REPLACE INTO " + QueryCompiler.TableName(mTableName) + pColumns
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(pTableName As String, pColumns() As Variant)
		  mTableName = pTableName
		  mColumns = pColumns
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Nice() As Integer
		  Return 1
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mColumns() As Variant
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTableName As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
