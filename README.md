# Carbon Credit Token – Dự án Toucan Protocol

Dự án này phát triển token tín chỉ carbon cơ bản trên nền tảng blockchain Ethereum (Polygon), nhằm số hóa và minh bạch hóa tín chỉ carbon, góp phần giảm thiểu khí thải CO₂ và thúc đẩy phát triển bền vững.

## 🎯 Mục tiêu dự án

Giải quyết những bất cập của thị trường tín chỉ carbon truyền thống như thiếu minh bạch, chi phí trung gian cao, rủi ro gian lận (greenwashing) bằng cách ứng dụng blockchain để:

- Token hóa tín chỉ carbon với metadata chi tiết, đảm bảo truy xuất nguồn gốc rõ ràng.
- Tăng tính thanh khoản và khả năng giao dịch linh hoạt qua các pool token trên nền tảng DeFi.
- Mở rộng khả năng tiếp cận cho doanh nghiệp nhỏ và cá nhân thông qua hệ sinh thái Web3.

## 🔗 Cấu trúc hợp đồng thông minh

- Token TCO2 đại diện cho 1 tấn CO₂ đã được hấp thụ hoặc loại bỏ.
- Hợp đồng quản lý phát hành, giao dịch, đốt token để bù đắp carbon.
- Tích hợp carbon pools như BCT và NCT giúp gom nhóm tín chỉ thành token ERC-20 dễ giao dịch.

## 🗂 Thư mục dự án

- `contracts/CarbonCreditToken.sol`: Hợp đồng thông minh chính  
- `README.md`: Tổng quan dự án và hướng dẫn sử dụng  

## 🛠 Công cụ sử dụng

- Remix IDE  
- Solidity ^0.8.0  
- MetaMask (Testnet/Mainnet)  

## ⚙️ Hướng dẫn triển khai

1. Mở [Remix IDE](https://remix.ethereum.org)  
2. Dán hợp đồng `CarbonCreditToken.sol` vào thư mục contracts  
3. Biên dịch và triển khai trên mạng Polygon hoặc testnet qua MetaMask  
4. Sử dụng các hàm mint, burn để tương tác token carbon  

## 🔍 Điểm nổi bật

- Minh bạch và bất biến nhờ blockchain, dễ dàng truy xuất nguồn gốc tín chỉ.  
- Tăng tính thanh khoản thị trường qua các pool token và nền tảng DeFi.  
- Hệ sinh thái mở rộng với KlimaDAO, SushiSwap, Balancer,...  
- Cơ chế đốt token TCO2 tạo dấu hiệu minh bạch cho hành động bù đắp carbon.  

## ⚠️ Hạn chế và thách thức

- Vấn đề pháp lý chưa hoàn chỉnh về quyền sở hữu tín chỉ.  
- Chất lượng tín chỉ carbon chưa đồng nhất, rủi ro greenwashing.  
- Biến động và rủi ro trong hệ sinh thái tài chính phi tập trung (DeFi).  
- Phụ thuộc vào dữ liệu ngoài chuỗi và chi phí giao dịch blockchain.  

## 🚀 Hướng phát triển

- Hoàn thiện pháp lý và tiêu chuẩn hóa token carbon trên toàn cầu.  
- Nâng cao bảo mật hợp đồng thông minh và mở rộng công nghệ mở rộng Layer 2.  
- Phát triển giao diện người dùng thân thiện, dễ tiếp cận hơn.  
- Tích hợp sâu hơn với các dự án và nền tảng tài chính phi tập trung.  

## 📄 License

MIT License

## 🧪 Hướng dẫn test hợp đồng trên Remix

1. Mở [Remix IDE](https://remix.ethereum.org)
2. Tạo file `CarbonCreditToken.sol` trong thư mục `contracts` và dán mã nguồn hợp đồng vào
3. Chọn compiler phiên bản Solidity phù hợp (ví dụ 0.8.20)
4. Biên dịch hợp đồng
5. Chọn môi trường triển khai (Environment):
   - `Injected Web3` để kết nối với MetaMask (Testnet như Polygon Mumbai hoặc Sepolia)
   - Hoặc `Remix VM` để test nhanh trên máy local
6. Deploy hợp đồng

## ⚙️ Ví dụ sử dụng các hàm chính

- **mint(address to, uint256 amount, string metadataURI)**  
  Gọi hàm này để tạo mới token carbon (TCO2) và cấp cho địa chỉ `to`. `amount` là số token, `metadataURI` là đường link thông tin chi tiết về tín chỉ carbon.

- **burn(uint256 amount)**  
  Đốt token TCO2 để thực hiện hành động bù đắp lượng carbon tương ứng. `amount` là số token muốn đốt.

Ví dụ:  
- Gọi `mint("0xAbc...123", 100, "ipfs://Qm...")` để tạo 100 TCO2 cho địa chỉ `0xAbc...123`.  
- Gọi `burn(50)` để đốt 50 token carbon và ghi nhận bù đắp.

## 📚 Một số thuật ngữ quan trọng

- **Token TCO2**: Token đại diện cho tín chỉ carbon, mỗi token tương ứng 1 tấn CO₂ đã được hấp thụ hoặc giảm thiểu.  
- **Carbon Pool (BCT, NCT)**: Các nhóm token carbon gom từ nhiều dự án để tạo ra token ERC-20 dễ giao dịch.  
- **Greenwashing**: Hành vi giả mạo hoặc phóng đại tác động tích cực đến môi trường.  
- **DeFi (Tài chính phi tập trung)**: Hệ sinh thái tài chính trên blockchain không qua trung gian truyền thống, cho phép giao dịch, cho vay, staking...  
- **IPFS**: Hệ thống lưu trữ phi tập trung, dùng để lưu metadata tín chỉ carbon một cách bất biến và truy xuất công khai.  


