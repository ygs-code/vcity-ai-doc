---
sidebar_position: 2  # 菜单中的排序位置（1 表示第一个）
slug: /whitepaper               # 文档访问路径（/ 表示首页）
sidebar_label: "Whitepaper"  # 左侧菜单显示的名称（自定义你想要的文字）
---
import Viewer from '@/components/Viewer'; // 引入自定义组件

<Viewer imgUrl="/assets/images/logo.png" />

# **Vcity.ai Whitepaper**

The Global Decentralized AI Infrastructure

**Vcity Labs**

Version: v1.1.0

Originally published October 27, 2025; last updated November 28, 2025
:::

# Abstract

Vcity.ai is a Decentralized Physical Infrastructure Network (DePIN) designed to address the challenges of compute monopoly and supply-demand imbalance within the current AI industry. Its core value lies in aggregating GPU resources globally and leveraging blockchain to enable decentralized scheduling, transparent settlement, and equitable distribution of computing power. This provides enterprises and individuals with low-cost, highly elastic AI computing services.

The Vcity.ai system employs a three-layer architectural design: the Base Layer, built on a trusted public blockchain; the Compute Layer, composed of global computing devices; and the Application Layer, which provides upper-level services. Our advantage lies in the efficient and verifiable computation, elastic scheduling of distributed tasks, confidential private model execution, and a multi-faceted incentive mechanism to ensure network stability and high service quality.

Vcity.ai's tokenomics is built upon a core design philosophy: separating the daily commercial operations from its long-term value investment. To achieve this, we implement a dual-asset economy. All business activities within the Vcity.ai are paid in stablecoins. Concurrently, we launch the VCAI token as the value capture and governance token, accruing value from the network's sustainable revenue streams and empowering the community to govern the network's future direction.

Vcity.ai offers three core services: (1) AI Computing Service (IaaS), providing bare-metal GPU resources for model training and fine-tuning; (2) AI Solution Service (PaaS), delivering customized solutions such as cultural tourism and education; and (3) AI Agent Service (AaaS), enabling the assetization and free trade of AI agents and their derivative content. Through these services, Vcity.ai is committed to building an open, fair, and efficient decentralized AI ecosystem.

# 1 Background

## 1.1 Generative AI Fuels Explosive Growth in Computing Demand

With the rapid advancement of Generative AI (GenAI), the scale of its models is undergoing unprecedented expansion. Both open-source and closed-source models are exhibiting an exponential growth trend in parameter scale, escalating from an initial hundred-million scale to the current trillion-parameter level. For instance, the recently released DeepSeek V3.2 has reached 671 billion parameters, while the GPT-4 boasts a parameter count as high as 1.7 trillion.

This dramatic expansion in parameter scale creates immense demand for computing resources. Taking DeepSeek V3.2 as an example, operating at FP16 precision with KV cache typically requires around 1.3--1.5 TB of VRAM capacity. This demand for GPU resources not only drives up the deployment costs of AI applications but also intensifies the global supply--demand imbalance for high‑performance computing resources.

## 1.2 The High Costs and Limitations of Cloud Computing Services

Currently, cloud service providers already handle over 50% of Internet traffic, establishing themselves as critical infrastructure for the digital world. However, the traditional cloud computing model reveals several shortcomings when confronting the challenges of the AI domain.

Firstly, cloud service pricing mechanisms are complex and costly. For AI applications requiring long-term, large-scale GPU usage, the costs are often prohibitive. Secondly, mainstream cloud service providers build closed ecosystems through proprietary APIs, specific toolchains, and other means, restricting customers' technology choices and making it difficult to migrate flexibly or adopt multi-cloud strategies.

Geographically, cloud data centers are often concentrated in regions with lower energy and land costs. This centralized deployment model struggles to meet the stringent low-latency requirements of edge computing and real-time AI applications. Furthermore, limitations in resource scheduling transparency and customizable configurations also restrict the value proposition of cloud services in specific scenarios.

## 1.3 Structural Imbalance in Computing Resource Allocation

Faced with the various limitations of cloud services, large enterprises and research institutions are investing heavily in building their own data centers, aiming for better performance control, data security, and cost efficiency. This trend has sparked a global "computing arms race", with various parties vying to hoard high-performance computing resources like GPUs.

However, this development model has led to a severe problem of uneven resource distribution. Leading tech companies, leveraging their substantial capital, are procuring and stockpiling GPU resources on a large scale, establishing a formidable competitive advantage in AI model training and deployment. Concurrently, small and medium-sized AI R&D teams, startups, and developers in the Web3 space face the situation of "struggling to secure even a single GPU card\". Even when GPU resources are accessible, the cost often exceeds their budget constraints.

This high concentration of computing resources not only exacerbates the "Matthew Effect\" within the AI ecosystem, where the strong get stronger and the weak get weaker; but more importantly, it severely constrains the diversity and inclusivity of technological innovation. A vast number of small and medium-sized teams with innovative potential are unable to translate their ideas into practical applications due to the lack of computing power, thereby stifling the overall innovative vitality of the AI industry.

# 2 Vcity.ai

## 2.1 Solution

To address systemic imbalances in compute supply and demand, resource concentration, and cost structures across today's AI industry, Vcity.ai proposes a new decentralized computing infrastructure. Its core idea is to leverage a trusted public blockchain and a distributed computing architecture to intelligently aggregate and schedule idle GPU resources worldwide, thereby building an open, efficient, and sustainable AI compute ecosystem.

Vcity.ai's design goals are to break the closure and monopoly of traditional cloud models and achieve "decentralized supply, on‑demand allocation, and verifiable use" of computing. Through protocol‑level, trust‑minimized incentive mechanisms, idle capacity from individuals, institutions, and data centers can be incorporated into a unified global scheduling network, delivering high‑performance computing services to AI developers, enterprises, and institutions---without trusted intermediaries.

Compared with traditional cloud models, Vcity.ai offers clear advantages in cost, elasticity, and transparency:

1. **Cost controllability:** Pay‑as‑you‑go pricing and automated bidding materially lower the barrier to GPU usage.
2. **Elastic performance:** A distributed scheduling system dynamically scales resources according to workload.
3. **Trust and transparency:** The blockchain ensures full traceability of compute usage and verifiability of results.

Moreover, Vcity.ai is not merely the re‑creation of a compute network; it is a full‑stack AI ecosystem spanning "Infrastructure---Solutions---Intelligent Services". Through a three‑layer service model, i.e., Infrastructure‑as‑a‑Service (IaaS), Platform‑as‑a‑Service (PaaS), and Agent‑as‑a‑Service (AaaS), the platform provides a complete technical loop from compute supply and AI application development to AI agent trading, fundamentally reshaping resource allocation and value circulation in the AI industry.

## 2.2 Overview

Vcity.ai is a decentralized AI computing infrastructure network (DePIN), fundamentally designed to address the current challenges of centralized monopolization and supply-demand imbalance in computing resources within the AI industry. The platform effectively integrates idle GPU resources worldwide, constructing a distributed AI computing service network characterized by high elasticity, high performance, and low latency. It primarily comprises the following three services.

### 2.2.1 AI Computing Service (Infrastructure-as-a-Service, IaaS)

Providing flexible bare-metal GPU invocation services for AI enterprises, Web3 projects, etc., supporting major workloads such as fine-tuning and cloud rendering.

- **LLM Fine-tuning Container:** Offering pre-configured training environments integrated with mainstream frameworks, supporting efficient fine-tuning techniques like LoRA, and enabling rapid model iteration and optimized deployment.
- **AI-Generated Content (AIGC) Container:** Coming pre-installed with mainstream generative models like Stable Diffusion, and utilizing load balancing and concurrency optimization technologies to support high-throughput generation tasks for text, images, audio, and other multimodal content.
- **Cloud Rendering and Real-Time Visual Container:** Specifically optimized for virtual reality, augmented reality, and 3D application scenarios. Providing real-time rendering services with millisecond-level latency, supporting high-resolution output and advanced rendering techniques like ray tracing.
- **Enterprise-Grade Custom Container:** Providing fully isolated private computing environments, supporting custom configurations, dedicated API interfaces, and enterprise-grade SLA guarantees to meet compliance requirements in industries such as finance and healthcare.

### 2.2.2 AI Solution Service (Platform-as-a-Service, PaaS)

Offering one-stop AI application services and solutions for end-users in sectors like cultural tourism, education, museums, and sports, integrating content creation, intelligent interaction, knowledge dissemination, and cultural asset activation.

- **Digital Transformation for Cultural Tourism:** Deploying AI virtual tour guide systems providing real-time multi-language interpretation; creating digital human IP avatars for immersive cultural experiences; employing computer vision for intelligent artifact recognition and interpretation; utilizing LLMs to generate personalized cultural stories, enhancing visitor engagement and satisfaction.
- **Intelligent Upgrade for Education Scenarios:** Implementing personalized learning path planning based on learning behavior analysis; providing 7×24 AI tutoring and QA services; automatically generating differentiated teaching content and exercise question banks; building intelligent learning outcome assessment systems to promote educational equity and quality improvement.
- **Intelligent Services for Sports and Events:** Deploying real-time AI commentary systems offering professional-level event narration; using computer vision for sports data collection and tactical analysis; constructing AR/VR immersive viewing platforms; generating personalized highlights and data reports.
- **Digital Applications for Government and Public Welfare:** Establishing digital cultural heritage preservation platforms for the permanent safeguarding of cultural resources; developing intelligent QA systems to enhance public service efficiency; building knowledge dissemination platforms to promote equitable information access; supporting smart city and digital government initiatives.

### 2.2.3 AI Agent Service (Agent-as-a-Service, AaaS)

Providing content creators, and industry clients with capabilities for creating, deploying, minting, trading, and invoking AI agents, enabling value circulation and commercial monetization based on AIGC.

- **Integrated Development Toolchain:** Integrating full-cycle development components including model training, optimization, packaging, testing, and deployment; offering visual development interfaces and code template libraries; supporting mainstream AI frameworks and model formats; including built-in performance monitoring and debugging tools to ensure stable agent operation.
- **Compute-as-a-Service Support:** Seamlessly connecting to the platform's distributed GPU resource pool for elastic compute scheduling; employing a pay-as-you-go billing model, significantly reducing model deployment and operational costs; providing automatic scaling mechanisms to handle traffic spikes; supporting edge computing node deployment for low-latency requirements.
- **NFT-based Ownership Mechanism:** Minting AI agents as unique NFT assets via smart contracts; binding developer identity, copyright information, and usage permissions; establishing transparent revenue distribution mechanisms; supporting version management and iterative updates for agents; ensuring effective protection of intellectual property.
- **Diverse Trading and Invocation Scenarios:** Supporting the minting, pricing, listing, and trading of Agent NFTs; offering flexible licensing models (exclusive, shared, time-limited, etc.); covering diverse application scenarios such as cultural tourism guidance, intelligent customer service, content creation, and data analysis; establishing user rating and reputation systems to facilitate the discovery of high-quality services.

## 2.3 Overall Architecture

Vcity.ai is built upon a trusted public blockchain, leveraging the innovative advantages of Web3 and blockchain technology to construct a global, decentralized GPU computing infrastructure network. This network is designed to meet the diverse needs of high-performance computing scenarios such as AI training and inference, real-time rendering, and LLMs for the cultural and tourism verticals.

The overall architecture adopts a layered design philosophy, comprising the following three layers:

**Base Layer (Trusted Public Blockchain):** Based on a trusted public blockchain as Layer-1, this layer provides Vcity.ai with a high-speed, secure, and stable blockchain infrastructure, ensuring the reliable operation of the entire computing network. It also facilitates the automated execution of smart contracts, supports secure transactions and real-time settlement for computing services, and guarantees transaction transparency and immutability.

**Compute Layer (Decentralized GPU Node Network):** Built upon the trusted public blockchain, Vcity.ai establishes a decentralized Compute Layer. This layer includes Compute Nodes, Verifier Nodes, and Scheduler Nodes, which work in synergy to achieve efficient resource matching and quality assurance. It aggregates globally distributed GPU resource nodes, forming a large-scale, high-efficiency computing power pool.

**Application Layer (API and DApp Application Layer):** On top of the Compute Layer, Vcity.ai provides a comprehensive ecosystem of developer tools. This includes standardized API interfaces, SDKs, and DApp application frameworks, enabling AI companies, game developers, and independent developers to quickly access and utilize high-performance computing resources. It also offers an intuitive and user-friendly resource management interface and payment/settlement tools, streamlining operations and enhancing the overall user experience.

<!-- ![Vcity.ai Product Architecture](images/vcityai_product_en.png) -->

<Viewer imgUrl="/assets/images/vcityai_product_en.png" />

## 2.4 Compute Layer

The decentralized Compute Layer comprises three types of core nodes: Compute Nodes serve as fundamental components providing actual decentralized GPU computing resources; Verifier Nodes are responsible for verifying the operational status of Compute Nodes to ensure the authentic and accurate completion of computational tasks; and Scheduler Nodes handle intelligent task allocation and resource optimization. Each node possesses a unique on-chain Decentralized Identifier (DID), which facilitates node credit assessment, tracking of historical service records, and reputation system construction, thereby forming a trustworthy decentralized computing ecosystem. These three node types collaborate synergistically to build an efficient and reliable distributed computing network.

### 2.4.1 Compute Nodes

#### *Node Function*

As the fundamental units for executing computing tasks, Compute Nodes are the direct providers of GPU computing power in the network, supporting compute-intensive tasks such as AI training, inference, and real-time rendering. To cater to different user needs, the Vcity.ai network further classifies nodes into two categories: Stable Nodes and Flexible Nodes.

#### *Stable Nodes*

Stable Nodes are primarily provided by trusted data centers and consist of long-term, highly available computing resources formed by high-performance, enterprise-grade GPU clusters. Their core value lies in providing foundational infrastructure support for tasks requiring long-term, stable, and trusted computing power, such as the pre-training and fine-tuning of large models.

#### *Flexible Nodes*

Flexible Nodes are contributed by a broad base of individual users or edge devices, characterized by high flexibility and distributed nature. These nodes form the elastic Compute Layer of the network, capable of providing large-scale, near-source, and rapidly deployable computing resources for burstable or periodic computing tasks, such as model deployment.

#### *Technical Requirements*

- Hardware Configuration: Nodes must be equipped with standardized GPUs.
- Registration Mechanism: Node registration is completed via smart contracts, automatically recording node type, performance parameters, GPU model, and staking information.
- Status Monitoring: Nodes proactively report their status, including online/offline status, computing load, health metrics, and other key indicators.

#### *Staking Mechanism*

Each Compute Node is required to stake a corresponding amount of tokens based on GPU specifications, market supply and demand, and token value. Staking parameters are automatically adjusted by the system weekly according to market dynamics to ensure the healthy operation of the economic model.

### 2.4.2 Verifier Nodes

#### *Node Function*

As the core of the computing task verification system, Verifier Nodes supervise Compute Nodes through periodic and random sampling mechanisms. They verify the authenticity of GPU resources, service quality, and node performance, ensuring the network operates with integrity.

#### *Verification Mechanism*

- Quality Tracking: Monitors service quality in real-time via data streams, tracking key performance indicators of node performance, including response latency, task success rate, and delivery quality.
- Open Access: Any node within the Compute Layer that can successfully submit valid proof of misconduct by a Compute Node can become a Verifier Node, forming a decentralized supervision system.

### 2.4.3 Scheduler Nodes

#### *Node Function*

Scheduler Nodes are responsible for the computing task scheduling system. Designed with a microservices architecture, they process computing demand tasks submitted by clients, automatically decompose them, and intelligently distribute them to optimal Compute Nodes.

#### *Scheduling Strategy*

The intelligent task allocation algorithm comprehensively considers the following factors:

- **Network Latency**: Prioritizes nodes with lower network latency to ensure task execution efficiency.
- **Computing Requirements**: Matches GPU resources with appropriate specifications based on the computational complexity of the task.
- **Price Factors**: Selects the most cost-effective Compute Nodes while meeting performance requirements.
- **Service Quality**: Refers to historical service records, prioritizing allocation to high-quality nodes.

Through the above multi-dimensional optimization, it achieves maximized resource utilization and optimized user experience.

## 2.5 Security Assurance Mechanisms

To ensure the security, reliability, and high efficiency of the decentralized computing power network, the Vcity.ai platform has established a multi-layered security assurance system. This system encompasses core mechanisms such as trusted computing verification, elastic scheduling management, and economic incentives.

### 2.5.1 High-Efficiency Trusted Computing Verification Mechanism

Vcity.ai has designed and implemented a GPU computing verification framework based on CPU Trusted Execution Environments (TEEs). By capturing GPU computation metadata and runtime measurements inside the TEE for attestation, the framework provides credibility proofs for GPU tasks with minimal performance overhead, ensuring process integrity and result correctness in trust‑sensitive scenarios such as decentralized AI inference.

### 2.5.2 Elastic Scheduling of Distributed Tasks

Vcity.ai uniformly encapsulates computing power from centralized data centers and flexible individual computing resources into corresponding, non-splittable computing execution units. Based on scheduling algorithms and according to the constraint relationships between task requirements and resource status, it automatically and optimally allocates computing tasks for diverse workloads with varying sensitivities to granularity, duration, and cost.

### 2.5.3 Confidentiality Protection for Private Models

To meet the highest security level requirements of enterprises for confidential commercial data and private models, we provide an AI confidential model solution. Leveraging a confidential computing architecture based on enterprise-grade trusted computing platforms, combined with accelerated industry-standard cryptographic algorithms and processor-integrated TEE technology, this solution achieves end-to-end encrypted computation within virtual machines. This ensures full-process confidentiality from data input and model processing to result output, eliminating the risk of node operators stealing user private data or model assets.

### 2.5.4 Node Economic Incentives

The platform features a multi-tiered economic incentive system designed to attract high-quality computing nodes and maintain their long-term, stable participation.

Proof of Capacity (PoC): Nodes consistently maintaining their GPU resources online, even when not actively tasked, receive a certain proportion of base rewards. The reward amount is positively correlated with the node's online duration, resource quality, and stability.

Proof of Delivery (PoD): Based on the quality and quantity of actual computing services completed, nodes receive additional performance-based rewards. Nodes delivering superior service quality obtain higher economic returns and prioritized task scheduling opportunities.

Service Fee Incentives: Compute Nodes receive a corresponding proportion of revenue sharing based on the computing service fees paid by users. Nodes with higher resource quality and better service ratings receive a higher service fee sharing ratio.

Multi-GPU Integration Incentive Mechanism: To optimize the training efficiency of large-scale AI models, the platform specifically incorporates a multi-GPU integration incentive mechanism:

- Architecture Optimization: Node operators are encouraged to prioritize deploying single-machine, multi-GPU architectures to enhance overall throughput and scheduling efficiency.
- Intelligent Identification: The system automatically identifies the total VRAM capacity of node machines. When the total VRAM of a single node reaches specific thresholds (e.g., $\geq 96\ \text{GB}$), the incentive weight increases in a staged manner.
- Differentiated Incentives: Multi-GPU nodes gain the following advantages:

  - Higher base PoC reward coefficient (up to 1.5x)
  - Elevated scheduling priority, leading to more opportunities for matching with high-value tasks
  - Exclusive eligibility to participate in high-load AI training tasks

# 3 Vcity.ai (VCAI) Tokenomics

This chapter details the tokenomics of the VCAI token for the Vcity.ai network. The model aims to build a sustainable digital economy where value is strongly tied to network fundamentals, governance is decentralized, and self-regulation is achieved through market mechanisms.

The Vcity.ai tokenomics is built upon a core design philosophy: separating the network's daily commercial operations from long-term value investment. To this end, the protocol employs a dual-asset framework:

- **Payment Asset**: All core business activities within the network, such as computing power leasing and API calls, are priced and settled using stablecoins. This creates a stable, low-friction commercial environment for users and computing power providers, avoiding the interference of token price volatility on core business costs.
- **Equity Asset**: The Vcity.ai Token (VCAI) is the sole value-capturing and governance token within the Vcity.ai network. Its core value derives from the sustainability of the network's protocol revenue and the governance rights toward the development direction.

## 3.1 Token Basics

VCAI is positioned as the governance rights credential of the Vcity.ai network, representing ownership of the network ecosystem. Its holders are the owners of the network, entitled to share in the network's growth dividends and participate in its governance process. The basic token information is shown below:

| Item                 | Details                           |
| -------------------- | --------------------------------- |
| Token Name           | Vcity.ai Token                    |
| Token Ticker         | VCAI                              |
| Issuing Blockchain   | Vcitychain                        |
| Initial Total Supply | 10,000,000,000 (10 Billion) VCAI* |

\*Note: This is the initial supply at protocol genesis. The protocol incorporates a dynamic supply mechanism governed by a Decentralized Autonomous Organization (DAO) to ensure long-term incentive sustainability and strategic flexibility. For details, see the following sections.

### 3.1.1 Token Allocation, Locking, and Release

The allocation ratios and release schedules described in this section are based on the initial supply of 10 billion VCAI tokens. The initial allocation plan is shown below.

| Allocation                  | %              | Quantity                       | Vesting                                                                  | Purpose                                                                                                                                                                                 |
| --------------------------- | -------------- | ------------------------------ | ------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Private Sale                | 23.5%          | 2,350,000,000 (2.35B)          | TGE: 21.91%, Aligned with the terms of the respective fundraising rounds | Early-stage capital and strategic resource alignment                                                                                                                                    |
| Public Sale                 | 5.5%           | 550,000,000 (550M)             | TGE: 30.91%, Aligned with the terms of the respective fundraising rounds | Early-stage capital and strategic resource alignment                                                                                                                                    |
| Core Team                   | 20%            | 2,000,000,000 (2B)             | TGE: 0%, 18-month cliff followed by 42-month linear vesting              | Long-term incentives for the core team and senior talent (including 25% reserved for high-performance contributors)                                                                     |
| Reserve and Governance Fund | 20%            | 2,000,000,000 (2B)             | -                                                                        | Managed by the foundation to support long-term operations, strategic partnerships, compliance needs, contingency reserves, community developer grants, and ecosystem growth initiatives |
| Strategic Advisors          | 10%            | 1,000,000,000 (1B)             | TGE: 0%, Linear vesting over 18 months                                   | Incentivizing industry experts and long-term ecosystem partners to provide technical, branding, and strategic support                                                                   |
| Initial Liquidity           | 1%             | 100,000,000 (100M)             | TGE: 100%                                                                | Ensuring initial market liquidity across exchanges and trading venues                                                                                                                   |
| Ecosystem Incentive Pool*   | 20%            | 2,000,000,000 (2B)             | TGE: 0%, Linear release over 10 years                                    | Long-term incentives for 10 compute partners and decentralized GPU providers contributing sustained network power                                                                       |
| **Total Supply**      | **100%** | **10,000,000,000 (10B)** | **TGE: 7.85%**                                                     |                                                                                                                                                                                         |

\* Ecosystem Incentive Pool: Allocation will be governed by the “Dynamic Incentive and Governance Framework” detailed in the following section.

Detailed allocation, locking, and release rules:

- **Ecosystem Incentive Pool (20%):** Used for long-term incentives to drive network growth, with specific allocations determined by the "Dynamic Incentive Governance Model\" detailed later. TGE: 0%, released linearly over 10 years starting from the Token Generation Event (TGE).
- **Investors (29%):**

  - Private Sale (23.5%): Allocated to early investors. TGE: 21.91%, with the remainder released according to the specific terms of the fundraising rounds.
  - Public Sale (5.5%): Allocated to public investors. TGE: 30.91%, with the remainder released according to the specific terms of the fundraising rounds.
- **Core Team (20%):** Used to incentivize the core team and senior talent. TGE: 0%, subject to an 18-month cliff followed by 42-month linear vesting.
- **Strategic Advisors (10%):** Incentivizing industry experts and ecosystem partners. TGE: 0%, followed by linear vesting over 18 months.
- **Reserve & Governance Fund (20%):** Managed by the Foundation to ensure long-term project operation, strategic partnerships, legal compliance, and contingency situations. Also includes community developer grants and ecosystem project support.
- **Initial Liquidity (1%):** Fully unlocked at TGE (100%). This allocation is dedicated to providing initial market liquidity across exchanges and trading venues to ensure healthy token circulation.

### 3.1.2 Genesis NFT

Prior to the TGE, to unite and reward the earliest community, Vcity.ai will first release a limited collection of "Genesis NFTs.\" This collection is not only a unique digital collectible but also a symbol of early community identity and a credential for core value. Its core value lies in that each Genesis NFT is bound to the right to claim a 10,000 VCAI token airdrop after TGE.

- Airdrop Source: The airdropped tokens will be pre-allocated from the "Initial Liquidity\" allocation, totaling no more than 30% of the initial liquidity supply. This design ensures that the rewards for early community users are an integral part of the initial liquidity strategy at project launch.
- Release Rules: To ensure the health and stability of the secondary market post-TGE, the VCAI airdrop claimed via Genesis NFTs will follow a linear release schedule. Specifically, 25% of the total airdrop can be claimed immediately at TGE, with the remaining 75% being linearly unlocked monthly over the subsequent 6 months.

## 3.2 Vote-Escrow Governance Model

First, to ensure network governance rights align with long-term value contributors, the protocol introduces a vote-escrow governance model. This design aims to select the network's long-term owners (rather than short-term speculators) as the primary governance entities, thereby ensuring the long-term effectiveness of decision-making.

Second, to promote governance decentralization and prevent whales (large token holders) from dominating voting through capital advantage, we introduce quadratic voting to adjust the calculation method of voting weight. The new weight will no longer have a linear relationship with the amount of locked VCAI but rather a sublinear relationship.

### 3.2.1 Governance Rights Credential (veVCAI)

veVCAI (vote‑escrowed VCAI) is the core governance rights credential within the Vcity.ai network. It is not a new token but a dynamic weight measuring a user's lock-up contribution. veVCAI serves as the sole basis for all governance voting and revenue distribution calculations.

### 3.2.2 Locking

- Acquisition Method: Users obtain veVCAI by locking VCAI in a designated protocol smart contract. Locking is a specific on-chain action where users voluntarily choose a fixed, non-revocable time period (e.g., 1 month or 1 year).
- Weight Calculation: The user's obtained veVCAI weight is positively correlated with the $\alpha$ power of the amount of locked VCAI and the chosen lock-up duration. Here, $\alpha$ is set to 0.5, i.e., the square root. This measure aims to diminish the absolute influence of large capital on voting weight.
- Core Characteristics:

  - Non-Transferability: The veVCAI weight itself cannot be traded on secondary markets, eliminating the risk of "governance right leasing.\"
  - Linear Decay: The veVCAI weight linearly decays as the locking expiration approaches. This incentivizes users to continuously extend their locking periods to maintain their governance influence within the network.

### 3.2.3 Quantitative Definition

| Parameter                       | Symbol   | Definition                                                            | Set Value                     |
| ------------------------------- | -------- | --------------------------------------------------------------------- | ----------------------------- |
| Maximum Lock-up Duration        | T_max    | The longest lock-up time a user can choose                            | 4 years (126,230,400 seconds) |
| Locked VCAI Amount              | n_VCAI   | The amount of VCAI tokens locked by the user                          | User-defined                  |
| Unlock Timestamp                | t_unlock | The future timestamp (Unix Timestamp) when the user's lock-up expires | User-defined                  |
| Current Timestamp               | t_now    | The current block timestamp (Unix Timestamp)                          | Dynamically changing          |
| Voting Weight Adjustment Factor | α       | The exponent adjusting the impact of locked amount on voting weight   | 0.5                           |

The veVCAI weight $w_{\text{veVCAI}}$ owned by a user at any time point $t_{\text{now}}$ is calculated by the following formula:

<!-- $$
w_{\text{veVCAI}}(t_{\text{now}}) = (n_{\text{VCAI}})^\alpha \cdot \frac{(t_{\text{unlock}} - t_{\text{now}})}{T_{\text{max}}}, \ \text{s.t. } t_{\text{now}} \le t_{\text{unlock}}
$$ -->

<Viewer imgUrl="/assets/images/vcai.png" />

This formula ensures:

- The initial weight is determined by both the locked amount and the locking duration.
- Weight decay is proportional to the passage of time, truly reflecting the remaining commitment period.

## 3.3 Value Capture Model

The core of this model is to establish a bridge that directly, automatically, and trustlessly connects the protocol's commercial success with the intrinsic value of the VCAI token. All protocol revenue should serve to enhance the value of VCAI and be programmatically returned to the network's long-term owners.

The value captured by the protocol is redistributed through an automated, transparent on-chain process:

- Revenue Aggregation: All protocol revenue is transferred to a dedicated protocol treasury contract.
- Market Buyback: The treasury contract, at preset intervals (initially set to every 24 hours), uses the accumulated revenue to execute market buybacks of VCAI on public exchanges. This mechanism provides VCAI with sustained, transparent, and positively correlated purchasing demand relative to network business volume.
- Equity Distribution: All repurchased VCAI is sent directly to the reward distribution contract. This contract distributes the received VCAI to all VCAI lockers on a per-block basis, according to the real-time veVCAI weight of all users. Each user can claim their currently accumulated rewards at any time through the protocol interface.

## 3.4 Incentive Governance Model

To guide the network towards a healthy balance between supply and demand and incentivize behaviors beneficial to the ecosystem, the model establishes a dynamic incentive layer driven by veVCAI governance and combined with automated adjustments.

### 3.4.1 Incentive Source

The total amount of the Ecosystem Incentive Pool is 2,000,000,000 VCAI, entirely allocated for the Incentivized Governance Model, designed for linear release over 10 years.

| Concept                  | Definition                                            | Calculated Value                  |
| ------------------------ | ----------------------------------------------------- | --------------------------------- |
| Ecosystem Incentive Pool | Total VCAI allocated to the Ecosystem Incentive Pool  | 2,000,000,000 VCAI                |
| Total Release Period     | Planned total release duration for the ecosystem fund | 10 years (522 weeks)              |
| Release per Period       | Total VCAI released per incentive period              | 3,831,417 VCAI, adjustable by DAO |

### 3.4.2 Token Governance

The network's incentive mechanism is collectively determined by the community. veVCAI holders can adjust the following core parameters through DAO governance voting:

- Incentive Period: The duration of each incentive distribution and adjustment cycle. Initially set to weekly, but DAO governance can vote to adjust it to daily, bi-weekly, etc.
- Release per Period: Determines the percentage of VCAI released from the "Ecosystem Incentive Pool\" for the corresponding incentive period. Initially set to 100%, but DAO governance can vote to reduce this percentage, allocating part of the funds to other uses such as developer grants and ecosystem partnerships.

### 3.4.3 Incentive Dashboard: Supply-Demand Balancing Mechanism

The protocol introduces an automated supply-demand balancing mechanism designed to dynamically adjust the incentive ratio for computing power suppliers and demanders (consumers), maintaining the network's computing power utilization at a healthy target level.

**Core Metric Parameters.** This mechanism operates around the following core metrics and protocol-internal fixed parameters:

- Actual Computing Power Utilization: The ratio of the total computing power actually consumed in the previous incentive period to the total computing power available. This is an objective core metric reflecting network busyness. Denoted as $U_{\text{actual}}$.

  <!-- $$
  U_{\text{actual}} = \frac{\text{Computing Power Units Consumed in the Period}}{\text{Total Available Computing Power Units in the Period}} \times 100\%
  $$ -->

<Viewer imgUrl="/assets/images/actual.png" />

- Target Computing Power Utilization: The optimal computing power utilization rate pursued by the protocol. This target aims to ensure efficient network operation while retaining some redundancy to handle sudden demand. Denoted as $U_{\text{target}}$, set to 80%.
- Adjustment Coefficient: A sensitivity coefficient controlling the speed of incentive ratio adjustment, ensuring the system converges smoothly towards the target and avoids drastic fluctuations. Denoted as $k$, set to 0.1.
- Incentive Distribution Ratio: The incentive ratio allocated to the supply side is denoted as $P_{\text{supply}}$, and the ratio allocated to the demand side is denoted as $P_{\text{demand}}$; the sum of the two is 100%, i.e., $P_{\text{supply}} + P_{\text{demand}} = 100\%$; both initial values are set to 50%.

**Dynamic Adjustment Algorithm.** At the beginning of each incentive period, the protocol automatically updates the supply-side incentive ratio $P_{\text{supply}}$ for the current period based on the $U_{\text{actual}}$ of the previous period. The calculation formula is as follows:

<!-- $$
P_{\text{supply}}(t) = P_{\text{supply}}(t-1) + k \cdot \big(U_{\text{actual}}(t-1) - U_{\text{target}}\big)
$$ -->

<Viewer imgUrl="/assets/images/supply.png" />

To avoid boundary violations, the system clips $P_{\text{supply}}(t)$ and $P_{\text{demand}}(t)$ to \[0%, 100%\] and enforces $P_{\text{supply}}(t)+P_{\text{demand}}(t)=100\%$. Where $P_{\text{supply}}(t)$ is the supply-side incentive ratio for the current period; $P_{\text{supply}}(t-1)$ is the supply-side incentive ratio for the previous period; $U_{\text{actual}}(t-1)$ is the actual computing power utilization for the previous period.

This mechanism is a classic negative feedback control system. Any deviation from the target utilization triggers a reverse incentive adjustment, automatically pulling the system back to the equilibrium point, thus achieving long-term self-stability. The adjustment of the sensitivity coefficient $k$ ensures that changes in the incentive ratio are gradual and predictable. This provides stable market expectations for computing power providers and consumers, facilitating their long-term participation strategies and avoiding market shocks caused by sudden policy changes.

**Scenario Analysis.**

- Scenario 1: Supply Surplus

  - Assume the previous period's $U_{\text{actual}}$ was 60%, below the 80% target;
  - Change in $P_{\text{supply}}$ = 0.1 \* (60% - 80%) = -2%, meaning the new $P_{\text{supply}}$ will decrease by 2% from the previous;
  - More incentives will flow to the demand side ($P_{\text{demand}}$ increases), stimulating consumption by subsidizing and reducing user costs, thereby increasing computing power utilization.
- Scenario 2: Supply Shortage

  - Assume the previous period's $U_{\text{actual}}$ was 95%, above the 80% target;
  - Change in $P_{\text{supply}}$ = 0.1 \* (95% - 80%) = +1.5%, meaning the new $P_{\text{supply}}$ will increase by 1.5% from the previous;
  - More incentives will flow to the supply side ($P_{\text{supply}}$ increases), attracting more computing power providers to join the network and increasing total supply.

**Incentive Distribution.** After calculating the current period's distribution ratio, the protocol allocates the total rewards released from the "Ecosystem Incentive Pool\" according to the ratio.

- For the supply-side incentive pool, these rewards will be distributed based on comprehensive factors such as the computing power provider's staked amount, service duration, and stability.
- For the demand-side incentive pool, these rewards will serve as a consumption subsidy, refunded proportionally based on the user's stablecoin spending during the period.

## 3.5 Economic Flywheel Model

<figure id="fig:flywheel_2">
<div class="minipage">
<!-- <img src="images/flywheel_1.png" /> -->
<Viewer imgUrl="/assets/images/flywheel_1.png" />
</div>
<div class="minipage">
<!-- <img src="images/flywheel_2.png" /> -->
<Viewer imgUrl="/assets/images/flywheel_2.png" />
</div>
</figure>

### 3.5.1 Compute Business Layer Flywheel

Vcity.ai's tokenomics growth strategy revolves around three core participants---compute consumers (application developers and end users), compute providers, and investors. The objective is to establish a self-reinforcing, continuously expanding ecosystem through the interplay of growing compute demand and token mechanisms. See the figure for details.

- First, as more compute providers join the platform, the overall compute supply strengthens. Vcity.ai's incentive mechanism ensures that nodes can earn base token rewards through PoC (Proof of Capacity) even when idle, so computing resources remain monetizable. This mechanism enhances node participation and online persistence, while increased task execution duration directly yields higher token rewards, synchronizing compute provider earnings with token value appreciation.
- Meanwhile, an increasingly diverse set of compute demand scenarios attracts more compute consumers to the ecosystem. Applications such as AI, cloud rendering, and cloud gaming not only generate higher and more sustained compute demand but also improve overall platform experience and end-user engagement. Rising compute demand further increases node utilization and earnings, establishing a stable, mutually reinforcing relationship between supply and demand.
- Driven by the dual forces of expanding compute supply and growing demand, token circulation and value within the ecosystem also strengthen. On one hand, compute usage relies on stablecoin payments; on the other hand, the growing user base and expanding application scenarios enhance market transaction volume and token recognition. Rising token value, in turn, attracts additional investors to the ecosystem.
- Investor contributions are reinvested into protocol optimization, supporting technological improvements and ecosystem development, such as enhancing network scalability and refining incentive structures. This further increases compute provider earnings and attracts additional compute resources to the network. As compute supply grows, unit compute costs gradually decline, drawing in more application developers, enriching compute usage scenarios, and boosting end-user activity, which drives sustained growth in compute demand. Increased compute utilization promotes service stability and enhances user experience, while network trustworthiness is strengthened, further attracting investor contributions.
- This process ultimately forms a complete positive feedback loop: "Compute supply growth → Lower compute costs → More developers joining → Enhanced user experience → Improved service reliability → Strengthened network trust → A more vibrant ecosystem → Increased user engagement → Rising compute demand → Continuous platform expansion → Token circulation and value growth → Reinforced market confidence → Further investor contributions", driving Vcity.ai's ecosystem prosperity and steady token value appreciation.

Overall, this mechanism creates mutual reinforcement between compute supply, compute demand, token value, and investor resources, generating market vitality and ecosystem recognition, and providing the foundation for Vcity.ai's long-term prosperity and sustainable growth.

### 3.5.2 Network Protocol Layer Flywheel

Vcity.ai's network layer economic model establishes a self-reinforcing, positive value loop---referred to as the "Network Layer Flywheel." This flywheel converts external network growth into sustainable, internal value, ensuring the long-term prosperity of the ecosystem. Each stage is tightly connected and mutually causal, see the figure for details.

- Network Growth: An increasing number of compute providers and users join the network, driving higher platform transaction volume and stablecoin settlement.
- Protocol Revenue: Rising transaction volume directly translates into increased protocol revenue.
- Value Capture: Growth in protocol revenue enables larger-scale VCAI market buybacks.
- Staking/Yield Incentives: Larger buybacks boost veVCAI staking yields (APR), enhancing incentives for long-term holding and locking.
- Governance Engagement: Higher returns motivate veVCAI holders to actively participate in governance, using the incentive dashboard to optimize network supply-demand balance.
- Ecosystem Attractiveness: A balanced, cost-efficient, and stable network attracts additional participants, completing the flywheel and fueling the next cycle of network growth.

## 3.6 VCAI Value Guarantee Strategy

To ensure the stability and long-term growth potential of the VCAI token's value, the platform implements multi-dimensional value guarantee mechanisms:

### 3.6.1 Node Penalty Mechanism

To ensure the stability and service quality of the decentralized computing network, the platform introduces an on‑chain behavior‑based node penalty mechanism (covering both Compute Nodes and Verifier Nodes):

- **Irregularity Identification**: Smart contracts automatically monitor node abnormal behaviors, such as malicious downtime, providing false computing power, tampering with verification results, etc.
- **Tiered Penalty Measures**:

  - Minor Irregularity: Deduct a portion of staked tokens (5%-10%)
  - Moderate Irregularity: Deduct a larger portion of staked tokens (10%-30%) and suspend rewards
  - Severe Irregularity: Confiscate all staked tokens and permanently ban participation in the network
- **Appeal Mechanism**: Establish a fair appeal channel, with the community voting to decide the final handling of disputed cases.
- **User Compensation**: Provide adequate compensation to users for the affected computing power portion based on their usage.

### 3.6.2 Demand-Driven Value Growth

- **Diversified Application Scenarios**: Continuously expand the computing power demand market through three core applications: AI training, inference services, and real-time rendering, increasing the practical usage demand for VCAI tokens.
- **Ecosystem Synergy**: Deeply synergize with trusted public chain modules such as DID, asset tokenization, and NFT to build a complete value cycle.
- **Partner Expansion**: Actively establish strategic partnerships with AI companies, game developers, metaverse projects, etc., to expand the token's application scope.

## 3.7 Dynamic Supply Model

To ensure the protocol maintains incentive effectiveness and strategic flexibility in long-term development, the protocol adopts a governance-controlled dynamic supply mechanism. This mechanism aims to strongly bind the right to increase token supply to the health of the network's fundamentals, ensuring that any increase in supply serves the long-term value growth of the ecosystem and provides the protocol with the necessary mechanism settings to address future opportunities and challenges.

### 3.7.1 Dynamic Supply Authorization

The protocol's dynamic supply capability is not unlocked all at once but is authorized through a cumulative, growth-based quota system. The strategic proposal quota obtained by the DAO is directly linked to and jointly activated by the protocol achieving stepwise milestones in economic performance and long-term community commitment, demonstrating that the protocol has gained a broad and real user base and can convert users into sustainable economic value.

For this purpose, the protocol continuously tracks the following two core growth metrics:

- Protocol Revenue Metric: The cumulative net fee income in stablecoin captured by the protocol treasury since genesis;
- Governance Equity Metric: The total amount of veVCAI tokens in the network, i.e., the locked amount of VCAI tokens.

The protocol measures growth using fixed stages:

- Protocol Revenue Stage: Every \$2 million in cumulative net fee income counts as one "Revenue Stage\";
- Governance Equity Stage: Every 500 million units of total veVCAI counts as one "Equity Stage\".

The number of currently available dynamic supply proposal quotas for the DAO community is determined by the following formula:

<!-- $$
\begin{aligned}
\text{Available Proposal Quotas} = \min(\text{Number of Achieved Revenue Stages}, \text{Number of Achieved Equity Stages}) - \text{Number of Executed Proposals}
\end{aligned}
$$ -->

<Viewer imgUrl="/assets/images/quotas.png" />

This mechanism ensures that the protocol's strategic capital operation capability always keeps pace with the network's real, balanced, and sustained growth and is ultimately constrained by the annual supply cap. Note that only "Strategic Issuance\" proposals consume this quota; "Protocol Repricing\", as a market capitalization management tool, does not consume quotas.

### 3.7.2 Adjustment Process

Once issuance capability is activated, any adjustment to the supply must follow a rigorous DAO governance decision-making process. This process includes proposal, voting, and a financing model designed to optimize capital introduction.

- Proposal: Whether for strategic issuance or protocol repricing, any relevant proposal must clearly articulate its core details, including but not limited to: the strategic purpose of the issuance, the partners being introduced, the token distribution plan, and detailed locking and release terms. Specifically, strategic issuance proposals must explicitly state that they will consume one available proposal quota.
- Voting: After sufficient community discussion (initially set for 1 week), the proposal enters the formal DAO governance voting phase. The proposal is approved for execution only if it receives support from more than 50% of veVCAI holders who vote.

### 3.7.3 Dynamic Supply Mechanisms

The dynamic supply mechanisms include two types: Strategic Issuance and Protocol Repricing. These are analogous to "stock splits\" and "financing\" in traditional finance.

**Strategic Issuance:** This proposal aims to accelerate network development by introducing strategic capital. Upon proposal approval, the protocol will mint additional new tokens, allocated directionally to new strategic partners according to the terms of the financing proposal, i.e., a "private placement.\" This is a clear financing activity whose essence is to dilute the ownership percentage in exchange for greater growth in the overall value of the network. To provide a predictable supply model, the protocol sets an annual issuance cap: in any given year, the cumulative amount of additionally issued tokens must not exceed 5% of the total supply at the beginning of that year.

**Protocol Repricing:** This proposal aims to optimize the token's liquidity and market friendliness, with an effect similar to a stock split. It can serve as a preparatory step or independent operation for major financing or market activities. When the proposal passes, the protocol performs a global reset of the token's nominal value. This is a pure market capitalization management tool, which is mathematically value-neutral. It does not involve the minting of any new tokens, nor does it dilute the ownership percentage of any holder; its sole purpose is to adjust the accounting unit of the token.

# 4 Core Competitiveness of the Technical Architecture

Through the following innovative technical architecture, Vcity.ai aims to establish a unique competitive advantage in the Web3+AI field.

## 4.1 High-Efficiency Trusted Computing Verification Algorithm

In distributed computing networks, the absence of an off-chain central authority presents a fundamental challenge: how to ensure the integrity of the off-chain computation process and the correctness of its results. This is particularly critical in trust‑sensitive scenarios like AI inference, where it must be guaranteed that results are produced from specified inputs and models. Existing technological approaches have struggled to effectively balance the three key dimensions: generality, security, and efficiency.

To address this, we have constructed a lightweight general-purpose framework for GPU computation verification based on CPU TEEs. This framework eliminates the dependency on specific GPU hardware, thereby expanding the scale of available computing resources for the Vcity.ai platform. It provides efficient and reliable trust proofs for GPU computing tasks with minimal performance overhead.

## 4.2 Elastic Scheduling Algorithm for Distributed Computing Tasks

Current computing demands from the demand side are becoming increasingly diverse and fragmented. These range from heavy tasks requiring large-scale clusters for prolonged training, to lightweight, fragmented tasks needing only single-card, short-duration inference or fine-tuning. Additionally, there are requirements for large‑scale concurrent model inference and general computing tasks (such as financial simulations and scientific research modeling). The predominant current computing supply model -- centralized data centers -- is increasingly revealing its structural bias towards serving high-performance, large-scale heterogeneous computing clusters when faced with this growing diversity of demands. This makes the existing centralized computing supply model appear overly rigid and lacking flexibility, struggling to achieve precise resource matching and efficient utilization, consequently leading to significant supply-demand mismatch. Simultaneously, there exists a vast quantity of underutilized heterogeneous computing resources widely distributed across personal computers, workstations, and edge devices globally. These resources are characterized by their large scale, flexible accessibility, and low maintenance costs.

To tackle this challenge, we have built an elastic scheduling algorithm for distributed computing tasks. It integrates heterogeneous, dynamic, idle computing units. Through the unified abstraction and management of resources, the platform transforms them into reliable, user-friendly, and cost-effective computing services. Based on the constraints between task requirements and resource status, it enables the automatic and optimized allocation of computing tasks, thereby reducing resource idle time.

<!-- ![Vcity.ai Technical Architecture](images/vcityai_tech_en.png) -->

<Viewer imgUrl="/assets/images/vcityai_tech_en.png" />

# 5 Core Competitiveness of the Business Model

Vcity.ai has also established a unique competitive edge through its innovative business model. The platform provides differentiated value propositions tailored to the pain points of various participants, forming a complete ecological value loop.

## 5.1 For AI Users

Vcity.ai integrates global GPU resources through a decentralized architecture, providing intelligent computing infrastructure that combines elasticity, cost-effectiveness, and vertical-specific optimizations for AI enterprises, AIGC developers, and cultural tourism/metaverse application providers. The core advantages include:

### 5.1.1 Elastic Scheduling, Immediate Availability

- **Global Resource Pool**: Establishes a distributed node network covering North America, Asia-Pacific, and Europe, enabling cross‑regional resource scheduling, with a target SLA of 99.95% service availability.
- **Intelligent Load Balancing**: Utilizes dynamic scheduling algorithms based on AI prediction to achieve millisecond-level task allocation, supporting burst high-concurrency demands.
- **Zero Deployment Cost**: Users can quickly access high-performance computing power via a Web interface or API without the need to build their own GPU clusters or maintenance teams.

### 5.1.2 Cost-Effective Computing Services

- **Significant Cost Advantage**: Offers 30%-70% cost reduction compared to centralized cloud service providers, significantly lowering AI inference and training expenses.
- **Flexible Billing Models**: Supports various modes such as pay-as-you-go, pay-per-task, and monthly/annual subscriptions to meet the needs of users of different scales.
- **No Hidden Fees**: Transparent pricing system with no additional charges for data transfer, storage, etc.

### 5.1.3 Vertical-Specific Large Model Optimization

- **Industry-Specific Optimization**: Provides customized computing acceleration solutions for high-growth industries like cultural tourism, metaverse, and AIGC.
- **Pre-trained Model Library**: Includes built-in industry-specific large models, such as cultural tourism Q&A models, 3D rendering optimization models, and educational personalized recommendation models.
- **One-Click Deployment Templates**: Offers scenario-based solution templates, including AI teachers, virtual tour guides, and intelligent customer service, enabling rapid business implementation.

### 5.1.4 Smart Contract Hosting, Transparent Settlement

- **On-Chain Execution Guarantee**: The entire process is automatically executed via smart contracts, ensuring transparency in computing power invocation, task delivery, and fee settlement.
- **Trustless Transactions**: Eliminates the trust risks associated with traditional hosting, enabling automated settlement with zero manual intervention.
- **Real-Time Audit Trail**: All transaction records are stored on-chain, supporting full lifecycle auditing and traceability.

### 5.1.5 AI Agent Trading and Monetization Channel

- **One-Stop Publishing Platform**: Supports rapid packaging, testing, deployment, and commercialization of AI models.
- **NFT-Based Rights Protection**: Utilizes NFT technology to secure model ownership and profit rights, building a trustworthy digital asset system.
- **AaaS Ecosystem**: Forms a multi-party win-win ecosystem involving developers, users, and investors.

## 5.2 For Node Operators

Vcity.ai provides a full-stack operation system for GPU owners, computing power providers, and Web3 node operators, featuring standardized access, continuous revenue, and on-chain governance. The core advantages include:

### 5.2.1 Revenue Upon Access, Monetizing Idle Resources

- **Guaranteed Basic Revenue**: Nodes receive basic Proof of Capacity (PoC) rewards after completing registration and staking, ensuring minimum earnings.
- **Monetize Idle Resources**: GPU resources continue to generate revenue through capacity contribution even when not fully utilized.
- **Transparent Revenue Calculation**: Revenue is calculated in real-time based on on-chain data and settled automatically on a daily basis.

### 5.2.2 Multi-Layered Reward Model, Positive Growth Incentives

- **Three-Tier Incentive System**:

  - Proof of Capacity (PoC): Reward for basic hardware contribution.
  - Proof of Delivery (PoD): Reward for task completion quality.
  - Service Fee Sharing: Revenue share from actual computing power usage fees.
- **Long-Term Incentive Mechanisms**: Includes additional incentives such as node loyalty rewards, referral rewards, and performance bonuses.

### 5.2.3 Low-Barrier Deployment, Intelligent Scheduling & On-Chain Settlement

- **One-Click Deployment Tools**: Provides Docker container images and automated deployment scripts, enabling node onboarding within 30 minutes.
- **Automated Settlement**: All task allocation and reward distribution are automatically executed via smart contracts, requiring no manual intervention.

### 5.2.4 Decentralized Governance Rights and Reputation Mechanism

- **On-Chain Identity System**: Each node has a unique DID recording its complete service history.
- **Reputation Scoring System**: Builds a reputation score based on multiple dimensions like service quality, online duration, and task completion rate.
- **Governance Participation Rights**: High-reputation nodes can participate in important governance matters such as network parameter adjustments and upgrade decisions.

## 5.3 For Investors

Vcity.ai, as a decentralized AI computing network and vertical application platform built on a trusted public chain, possesses significant capital attractiveness and growth potential. The core advantages include:

### 5.3.1 Overlapping High-Growth Sector Dividends

- **Convergence of Dual Trends**: Captures the dual tailwinds of GenAI (projected market size of \$1.3 trillion by 2030) and DePIN.
- **Explosive Market Demand**: Benefits from the global GPU supply-demand imbalance (shortage exceeding 40%) and the exponential growth in AI model training demands.
- **Clear Policy Support**: Many governments have launched AI development strategies, with computing infrastructure receiving key policy and funding support.

### 5.3.2 Dual-Engine Driven Business Model

- **B2B Market Coverage**:

  - Target Customers: AI enterprises, cultural tourism groups, educational institutions, government departments.
  - Market Size: China's AI computing power market alone is projected to exceed \$50 billion by 2025.
- **B2C Market Expansion**:

  - Target Users: AIGC creators, independent developers, SMEs.
  - Large User Base: Over 20 million AI developers globally.
  - Strong Growth Potential: Industry reports indicate a significant annual growth rate for AIGC users, with some segments exceeding 200%.
- **Diversified Revenue Streams**: Computing power leasing, platform service fees, transaction commissions, value-added services.

### 5.3.3 Value Backing Based on Native Token

- **Multi-Functional Token Design**: The VCAI token integrates node staking, governance voting, and ecosystem incentives, creating strong demand support.
- **Buyback Mechanism Guarantee**: Ensures long-term value appreciation through periodic buybacks.
- **Financial Innovation Potential**: Supports innovative decentralized finance (DeFi) applications like staking mining, liquidity mining, and synthetic assets.

### 5.3.4 Real Asset Backing and Competitive Barriers

- **Physical Asset Backing**: All computing power is based on real GPU hardware, creating a value anchor between physical and digital assets.
- **Network Effect Moat**: The value of the network grows exponentially with the number of nodes (Metcalfe's Law).
- **Profound Technical Barriers**: Proprietary core technologies including self-developed scheduling algorithms, cross-chain protocols, and privacy computing.

# 6 Business Model / Revenue Streams

The Vcity.ai platform has established diversified revenue models, achieving sustainable commercial value creation through four core pillars: computing services, network operations, customized solutions, and AI agent services.

## 6.1 Computing Power Leasing Services

- **Pay-Per-Use Model**: Computing power users (including AI companies, metaverse platforms, cultural tourism enterprises, etc.) pay corresponding leasing fees based on the actual amount of GPU resources used and computing duration.
- **Dynamic Pricing Mechanism**: The platform implements a flexible, differentiated pricing strategy based on multiple factors such as resource tier, node quality, and computing scale to maximize resource allocation efficiency.

## 6.2 Network Service Fees

- **Transaction Fees**: The Vcity.ai platform charges a certain percentage of network service fees on each computing power transaction conducted by users, forming the foundational revenue for platform operations.
- **Dynamic Adjustment Mechanism**: Fee standards are dynamically adjusted based on market supply and demand. All fees are transparent, publicly disclosed, and settled in real-time, ensuring transaction fairness.

## 6.3 Enterprise Customization Services

Targeting the specific needs of vertical industries like cultural tourism and the metaverse, the platform provides dedicated AI large model training and optimization services. It charges corresponding technical service fees for these in-depth customized solutions, offering strong support for enterprise digital transformation.

**AI Agent as a Service (AaaS)**

- **Creation Fee**: Charges a basic service fee for the creation process of each AI Agent, including the Gas fees required for NFT minting.
- **Transaction Commission**: Charges a fixed percentage transaction fee on Agent trades occurring in the secondary market.
- **Usage Revenue Share**: When an AI Agent is integrated into websites or metaverse scenes, fees are charged based on the number of calls or usage duration. Revenue is shared between the AI Agent creator/holder and the platform according to a pre-defined ratio.

# 7 Development Plan and Milestones

Vcity.ai has formulated a clear three-year development strategy, aiming to build a world-leading decentralized AI infrastructure platform through the step-by-step achievement of phased goals.

## 7.1 Phase 1: Technology Validation & Ecosystem Launch

### 7.1.1 Core Objectives

- Complete the core technical architecture and Minimum Viable Product (MVP) development.
- Validate the feasibility, stability, and scalability of core functions.

### 7.1.2 Key Milestones

- **Technology Development Deliverables**:

  - Complete the development, testing, and third-party security audit of the VCAI token smart contract.
  - Release compute node v1.0, supporting basic computing power access functionality.
  - Complete the P2P network layer architecture and implementation of the basic task scheduling algorithm.
- **Testnet Deployment**:

  - Successfully deploy the Vcity.ai testnet environment.
  - Launch an internal developer testing program to gather feedback and continuously optimize system performance.
  - Complete Proof-of-Concept (POC) testing with the first batch of enterprise clients.
- **Team & Community Building**:

  - Establish an early node operator community to form a core user base.
  - Formulate community governance rules and operational standards.

## 7.2 Phase 2: Scale Expansion & Product Maturation

### 7.2.1 Core Objectives

- Achieve the official mainnet launch and reach scaled operational levels.
- Establish a complete product matrix and a multi-level service system.
- Fully activate the token economic incentive system.

### 7.2.2 Key Milestones

- **Official Mainnet Launch**:

  - Complete the design and development of validator nodes and scheduler nodes, gradually integrating them into the mainnet operation.
  - Deploy the VCAI mainnet incentive mechanism, officially launching the initial access rewards, commission distribution, and long-term profit-sharing systems.
  - Migrate thoroughly tested and validated core smart contracts (e.g., for compute node management, task scheduling) to the mainnet environment.
- **AI Solutions Platform Release**:

  - Build a comprehensive AI application service platform for cultural fields like tourism, education, and museums, integrating content creation, intelligent interaction, knowledge dissemination, and digitalization of cultural assets.
  - Provide standardized API interfaces and customized solutions to lower the barrier for enterprise AI adoption.
  - Establish industry benchmark cases to form a replicable business model.
- **Market Expansion**:

  - Achieve multi-regional node deployment to enhance network coverage and service availability.
  - Establish a strategic partnership system to deepen industrial ecosystem collaboration.

## 7.3 Phase 3: Ecosystem Maturity & Leadership Establishment

### 7.3.1 Core Objectives

- Establish global brand influence and achieve a mature, sustainable, and profitable business model.
- Build a comprehensive AI computing ecosystem and a cross-industry solutions platform.
- Achieve financial breakeven and maintain sustained profitability.

### 7.3.2 Key Milestones

- **Upgrade to Comprehensive AI Computing Service Platform**:

  - Provide enterprise-grade GPU training and inference computing power with elastic allocation services, supporting diverse workloads like LoRA fine-tuning, AIGC content generation, and real-time cloud rendering.
  - Enable developers to create, host, mint, and trade AI Agent NFTs (covering application scenarios such as cultural tourism digital humans, AI assistants, and educational agents), realizing value sharing and commercial monetization for AaaS.
  - Establish an intelligent scheduling and optimization system for computing resources to maximize resource utilization.
- **Global Ecosystem Development**:

  - Establish a complete developer support center and an open API ecosystem portal, providing comprehensive technical support.
  - Build a global computing service brand and actively participate in international AI and Web3 industry summits and forums.
  - Promote the establishment of industry standards and lead the development direction of decentralized AI infrastructure.
  - Achieve business coverage in major global regions and establish an international operation system.
