class Example < Formula
  desc "Example formula"
  homepage "https://example.com" # Corrected homepage
  url "https://example.com/example-1.0.tar.gz"
  sha256 "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef"

  def install
    # For a real formula, you would unpack sources and compile them here.
    # For this example, we'll create a dummy executable.
    (bin/"example").write <<~EOS
      #!/bin/sh
      echo "Hello, World!"
    EOS
    chmod 0755, bin/"example"
  end

  test do
    assert_equal "Hello, World!", shell_output("#{bin}/example").strip
  end
end
