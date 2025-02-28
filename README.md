# 🖨️ Printer Management Tool

A simple yet powerful **batch script** for managing Windows print services. This tool allows you to:

✅ **Enable/Disable RPC Authentication Level Privacy** (via Windows Registry).

✅ **Restart the Print Spooler Service** to fix printing issues.

---

## 🚀 Features
- **User-Friendly Menu:** Easy navigation through a simple interface.
- **Admin Privileges Handling:** Automatically requests admin rights if needed.
- **Silent Execution:** Suppresses unnecessary system messages for a clean experience.
- **Error Handling:** Properly checks and reports on each operation's success or failure.

---

## 📂 Installation & Usage

1. **Download & Run**
   - Clone this repository:
     ```sh
     git clone https://github.com/aminltf/RPC.git
     ```
   - Or manually download `RPC.bat`.

2. **Run the Script as Administrator**
   - Right-click on `RPC.bat` and select **Run as administrator**.
   - Follow the on-screen instructions.

---

## 🔧 How It Works

| Option | Description |
|--------|-------------|
| `1` | Adds the `RpcAuthnLevelPrivacyEnabled` registry key to manage print security. |
| `2` | Restarts the `Print Spooler Service`, resolving many printer-related issues. |
| `3` | Exits the program. |

---

## 💡 Why Use This Tool?

Many Windows printing issues are caused by corrupted spooler services or security policies. This script automates troubleshooting steps that IT admins and users frequently perform manually.

---

## 🏆 Credits

- **Developer:** [aminltf](https://github.com/aminltf)
- **GitHub Repository:** [printermgmt](https://github.com/aminltf/RPC)

---

## ⚠️ Disclaimer

This script modifies Windows registry settings and system services. **Use at your own risk!** Ensure you understand the changes before applying them.
