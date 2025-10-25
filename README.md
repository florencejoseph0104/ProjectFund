ProjectFund Smart Contract

Overview
The **ProjectFund Smart Contract** enables decentralized crowdfunding on the **Stacks blockchain** using **Clarity**.  
It allows users to create funding campaigns, contribute STX tokens, and withdraw or refund funds based on campaign outcomes.  
This ensures a **transparent**, **trustless**, and **community-driven** fundraising process.

---

Key Features
- **Create Campaigns:** Project creators can set funding goals and deadlines.  
- **Contribute STX:** Backers can support projects with STX contributions.  
- **Refunds:** Contributors can claim refunds if funding goals are not met.  
- **Secure Withdrawals:** Project owners can withdraw funds only after goals are reached.  
- **Transparency:** All campaigns and contributions are publicly accessible on-chain.

---

Contract Functions

**Public Functions**
| Function | Description |
|-----------|-------------|
| `create-campaign(goal uint, duration uint)` | Initializes a new campaign with a funding goal and deadline. |
| `donate(id uint, amount uint)` | Allows a user to contribute STX to a specific campaign. |
| `withdraw-funds(id uint)` | Enables campaign creators to withdraw funds once the goal is met. |
| `refund(id uint)` | Allows contributors to withdraw their donations if the goal is not met. |

**Read-Only Functions**
| Function | Description |
|-----------|-------------|
| `get-campaign(id uint)` | Returns campaign details including creator, goal, raised amount, and deadline. |
| `get-donation(id uint, donor principal)` | Fetches the total amount a user has donated to a campaign. |
| `total-campaigns()` | Returns the total number of campaigns created. |

---

Data Structures
- **Campaign Map:** Stores each campaign’s data (creator, goal, deadline, raised amount, claimed status).  
- **Donations Map:** Tracks each donor’s contribution per campaign.  
- **Campaign Counter:** Maintains the total count of campaigns created.

---

Logic Summary
1. **Campaign Creation:** The project owner defines the funding goal and deadline.  
2. **Funding Phase:** Contributors donate STX until the deadline.  
3. **Goal Verification:**  
   - If the goal is met → funds can be withdrawn by the creator.  
   - If not met → contributors can claim refunds.  
4. **Transparency:** All campaign and contribution records remain immutable on-chain.

---

Deployment
You can deploy the contract using the [Stacks CLI](https://docs.stacks.co/understand-stacks/cli-wallet) or [Clarinet](https://github.com/hirosystems/clarinet):

```bash
clarinet deploy
