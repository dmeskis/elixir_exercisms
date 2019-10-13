defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  @dna_to_rna_map %{
    # 'G' => 'C'
    71 => 67,
    # 'C' => 'G'
    67 => 71,
    # 'T' => 'A'
    84 => 65,
    # 'A' => 'U'
    65 => 85
  }

  def to_rna(dna) do
    dna |> Enum.map(&dna_to_rna/1)
  end

  defp dna_to_rna(nucleotide) do
    @dna_to_rna_map[nucleotide]
  end
end
