using Xunit;

namespace xUnit.Tests.Facts
{
    public class xUnitFacts
    {
        [Theory]
        [InlineData(3)]
        [InlineData(5)]
        [InlineData(6)]
        public void MyFirstTheory(int value)
        {
            Assert.True(IsOdd(value));
        }

        private static bool IsOdd(int value)
        {
            return value % 2 == 1;
        }
    }
}
