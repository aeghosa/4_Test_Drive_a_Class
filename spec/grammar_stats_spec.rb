require "grammar_stats.rb"

RSpec.describe GrammarStats do
   context "given an empty string" do
      it "fails" do
        grammar_stats = GrammarStats.new #new object of that class created?
        expect{ grammar_stats.check("") }.to raise_error "Not a sentence"
      end
    end

    describe "@check" do
      context "given a string with a capital letter at begin and special character at end " do
          it "returns true" do
             grammar_stats = GrammarStats.new #new object of that class created?
             result = grammar_stats.check("Hello!")
             expect(result).to eq true
          end
      end
    end

      context "given a string with a no capital letter at begin and special character at end " do
          it "returns flase" do
             grammar_stats = GrammarStats.new #new object of that class created?
             result = grammar_stats.check("hello")
             expect(result).to eq false
          end
      end

      describe "@percentage_good" do
        context "calculating the amount of texts checked " do
            it "returns integer as a percentage" do
               grammar_stats = GrammarStats.new
               grammar_stats.check("Hello!")
               grammar_stats.check("hello")
               result = grammar_stats.percentage_good
               expect(result).to eq 50
            end
        end

        context "calculating the amount of texts checked " do
          it "returns integer as a percentage" do
             grammar_stats = GrammarStats.new
             grammar_stats.check("Hello!")
             grammar_stats.check("Apple!")
             grammar_stats.check("hello")
             result = grammar_stats.percentage_good
             expect(result).to eq 66
          end
        end
      end
 end