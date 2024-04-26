CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `owner_uid` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `role` varchar(999) DEFAULT 'agent',
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `agents` (`id`, `owner_uid`, `uid`, `role`, `email`, `password`, `name`, `mobile`, `comments`, `is_active`, `createdAt`) VALUES
(3, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'n9xrxIvwIajEo2JO2poQ0b3UyUnhUF3g', 'agent', 'john@agent.com', '$2b$10$/LRIrp/i6vE0bKArKaDj7OzN/KxO.QUCZLT5rjo02VK96ka0FWjdO', 'john', '7778888000', 'some comments', 1, '2024-04-06 06:45:15');

CREATE TABLE `agent_chats` (
  `id` int(11) NOT NULL,
  `owner_uid` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `chat_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `agent_chats` (`id`, `owner_uid`, `uid`, `chat_id`, `createdAt`) VALUES
(4, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'n9xrxIvwIajEo2JO2poQ0b3UyUnhUF3g', 'jjjSjiuijujS', '2024-04-06 08:26:00'),
(6, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'n9xrxIvwIajEo2JO2poQ0b3UyUnhUF3g', 'jjBIuiiBBuii', '2024-04-07 15:45:03');

CREATE TABLE `agent_task` (
  `id` int(11) NOT NULL,
  `owner_uid` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `agent_comments` longtext DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `agent_task` (`id`, `owner_uid`, `uid`, `title`, `description`, `agent_comments`, `status`, `createdAt`) VALUES
(2, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'n9xrxIvwIajEo2JO2poQ0b3UyUnhUF3g', 'holiday ', 'tell all customer that its holiday', 'this was done', 'COMPLETED', '2024-04-09 06:51:55');
CREATE TABLE `broadcast` (
  `id` int(11) NOT NULL,
  `broadcast_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `templet` longtext DEFAULT NULL,
  `phonebook` longtext DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `timezone` varchar(999) DEFAULT 'Asia/Kolkata',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `broadcast` (`id`, `broadcast_id`, `uid`, `title`, `templet`, `phonebook`, `status`, `schedule`, `timezone`, `createdAt`) VALUES
(12, 'qU0sATVTEvDtG5YveTizEEzOlwiVRFwb', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'testing', '{\"name\":\"only_video_message\",\"components\":[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https://scontent.whatsapp.net/v/t61.29466-34/413640697_1820494281748145_7189156947605409707_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=arF2wVXVYLMAb574Lie&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&oh=01_ASCuzJRYeAo_SSroc7iwDV3oanh2xJ4J0WrbbMOP3-EqSg&oe=6637457F\"]}},{\"type\":\"BODY\",\"text\":\"Hello there,\\nThank you for subscribing to us. You can stop all notifications by sending us a STOP\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1820494278414812\"}', '{\"id\":9,\"name\":\"testing\",\"uid\":\"lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8\",\"createdAt\":\"2024-04-05T04:37:09.000Z\"}', 'FINISHED', '2024-04-05 15:37:45', 'Asia/Kolkata', '2024-04-05 10:07:55'),
(13, 'lGbJKXlmKMQyeF2LOCdkIxpyCONZqMzV', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'testi', '{\"name\":\"only_video_message\",\"components\":[{\"type\":\"HEADER\",\"format\":\"VIDEO\",\"example\":{\"header_handle\":[\"https://scontent.whatsapp.net/v/t61.29466-34/413640697_1820494281748145_7189156947605409707_n.mp4?ccb=1-7&_nc_sid=8b1bef&_nc_ohc=arF2wVXVYLMAb574Lie&_nc_ht=scontent.whatsapp.net&edm=AH51TzQEAAAA&oh=01_ASCuzJRYeAo_SSroc7iwDV3oanh2xJ4J0WrbbMOP3-EqSg&oe=6637457F\"]}},{\"type\":\"BODY\",\"text\":\"Hello there,\\nThank you for subscribing to us. You can stop all notifications by sending us a STOP\"}],\"language\":\"en_US\",\"status\":\"APPROVED\",\"category\":\"MARKETING\",\"id\":\"1820494278414812\"}', '{\"id\":9,\"name\":\"testing\",\"uid\":\"lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8\",\"createdAt\":\"2024-04-05T04:37:09.000Z\"}', 'FINISHED', '2024-04-05 15:38:47', 'Asia/Kolkata', '2024-04-05 10:08:56');

CREATE TABLE `broadcast_log` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `broadcast_id` varchar(999) DEFAULT NULL,
  `templet_name` varchar(999) DEFAULT NULL,
  `is_read` int(1) DEFAULT 0,
  `meta_msg_id` varchar(999) DEFAULT NULL,
  `sender_mobile` varchar(999) DEFAULT NULL,
  `send_to` varchar(999) DEFAULT NULL,
  `delivery_status` varchar(999) DEFAULT 'PENDING',
  `delivery_time` varchar(999) DEFAULT NULL,
  `err` longtext DEFAULT NULL,
  `example` longtext DEFAULT NULL,
  `contact` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `broadcast_log` (`id`, `uid`, `broadcast_id`, `templet_name`, `is_read`, `meta_msg_id`, `sender_mobile`, `send_to`, `delivery_status`, `delivery_time`, `err`, `example`, `contact`, `createdAt`) VALUES
(20, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'qU0sATVTEvDtG5YveTizEEzOlwiVRFwb', 'only_video_message', 0, 'wamid.HBgMOTE5NjkwMzA5MzE2FQIAERgSMzgzN0MxN0Q3NUZFMTIzQjlEAA==', '+91 70373 00870', '919690309316', 'failed', '1712311680255', NULL, '[]', '{\"id\":26,\"uid\":\"lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8\",\"phonebook_id\":\"9\",\"phonebook_name\":\"testing\",\"name\":\"mine\",\"mobile\":\"919690309316\",\"var1\":null,\"var2\":null,\"var3\":null,\"var4\":null,\"var5\":null,\"createdAt\":\"2024-04-05T04:37:17.000Z\"}', '2024-04-05 10:07:55'),
(21, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'lGbJKXlmKMQyeF2LOCdkIxpyCONZqMzV', 'only_video_message', 0, 'wamid.HBgMOTE5NjkwMzA5MzE2FQIAERgSOTA3RUQ2NkU5MTA0RTFBODM4AA==', '+91 70373 00870', '919690309316', 'failed', '1712311739021', NULL, '[]', '{\"id\":26,\"uid\":\"lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8\",\"phonebook_id\":\"9\",\"phonebook_name\":\"testing\",\"name\":\"mine\",\"mobile\":\"919690309316\",\"var1\":null,\"var2\":null,\"var3\":null,\"var4\":null,\"var5\":null,\"createdAt\":\"2024-04-05T04:37:17.000Z\"}', '2024-04-05 10:08:56');

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `for_all` int(1) DEFAULT 0,
  `chats` longtext DEFAULT NULL,
  `flow` longtext DEFAULT NULL,
  `flow_id` varchar(999) DEFAULT NULL,
  `active` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `chatbot` (`id`, `uid`, `title`, `for_all`, `chats`, `flow`, `flow_id`, `active`, `createdAt`) VALUES
(10, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'test', 0, '[\"918430088300\"]', '{\"id\":24,\"uid\":\"lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8\",\"flow_id\":\"zcrGvkD1wREKhFsenBKMfE2cLq2NmeZG\",\"title\":\"New One\",\"createdAt\":\"2024-03-23T06:06:52.000Z\"}', '24', 1, '2024-03-25 10:59:29');

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `chat_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `last_message_came` varchar(999) DEFAULT NULL,
  `chat_note` longtext DEFAULT NULL,
  `chat_tags` longtext DEFAULT NULL,
  `sender_name` varchar(999) DEFAULT NULL,
  `sender_mobile` varchar(999) DEFAULT NULL,
  `chat_status` varchar(999) DEFAULT 'open',
  `is_opened` int(1) DEFAULT 0,
  `last_message` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `chats` (`id`, `chat_id`, `uid`, `last_message_came`, `chat_note`, `chat_tags`, `sender_name`, `sender_mobile`, `chat_status`, `is_opened`, `last_message`, `createdAt`) VALUES
(7, 'jjBIuiiBBuii', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', '1712555326', NULL, NULL, 'codeyon.com', '918430088300', 'open', 1, '{\"type\":\"audio\",\"metaChatId\":\"wamid.HBgMOTE4NDMwMDg4MzAwFQIAERgSMDQwRENGRUI3MDhGQ0MzMkZEAA==\",\"msgContext\":{\"type\":\"audio\",\"audio\":{\"link\":\"http://localhost:3000/media/ZtE9wv3dIrNgPKeKXifyxjJHylA2j1bB.mp3\"}},\"reaction\":\"\",\"timestamp\":1712555326,\"senderName\":\"codeyon.com\",\"senderMobile\":\"918430088300\",\"status\":\"sent\",\"star\":false,\"route\":\"OUTGOING\",\"agent\":\"john@agent.com\"}', '2024-03-18 06:16:25'),
(8, 'jjjSjiuijujS', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', '1712388855', NULL, '[\"hey\"]', 'hamidsaifi.com', '919690309316', 'open', 1, '{\"type\":\"text\",\"metaChatId\":\"wamid.HBgMOTE5NjkwMzA5MzE2FQIAERgSQjkwNjc3OUFBNjhBMjkxQzFFAA==\",\"msgContext\":{\"type\":\"text\",\"text\":{\"preview_url\":true,\"body\":\"hey\"}},\"reaction\":\"\",\"timestamp\":1712388855,\"senderName\":\"hamidsaifi.com\",\"senderMobile\":\"919690309316\",\"status\":\"sent\",\"star\":false,\"route\":\"OUTGOING\"}', '2024-03-25 10:58:55');

CREATE TABLE `chat_widget` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `whatsapp_number` varchar(999) DEFAULT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `place` varchar(999) DEFAULT NULL,
  `size` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `chat_widget` (`id`, `unique_id`, `uid`, `title`, `whatsapp_number`, `logo`, `place`, `size`, `createdAt`) VALUES
(4, '3GBcMopG03', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'i need help', '918430088300', 'whatsapp-color-icon.png', 'TOP_LEFT', '65', '2024-04-09 11:47:43');

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `phonebook_id` varchar(999) DEFAULT NULL,
  `phonebook_name` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `var1` varchar(999) DEFAULT NULL,
  `var2` varchar(999) DEFAULT NULL,
  `var3` varchar(999) DEFAULT NULL,
  `var4` varchar(999) DEFAULT NULL,
  `var5` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `contact` (`id`, `uid`, `phonebook_id`, `phonebook_name`, `name`, `mobile`, `var1`, `var2`, `var3`, `var4`, `var5`, `createdAt`) VALUES
(26, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', '9', 'testing', 'mine', '919690309316', NULL, NULL, NULL, NULL, NULL, '2024-04-05 10:07:17');

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `email` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `contact_form` (`id`, `email`, `name`, `mobile`, `content`, `createdAt`) VALUES
(1, 'email@gmail.com', 'John do', '+91999999999', 'hello, what are the charges', '2024-02-28 07:57:12'),
(3, 'piyushrathod2021@gmail.com', 'Piyush Rathod', '8511821234', 'I want this', '2024-03-04 11:15:50'),
(4, 'sarvodaya.r@gmail.com', 'rajesh', '9901399065', 'hi', '2024-03-05 09:00:41');

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `faq` (`id`, `question`, `answer`, `createdAt`) VALUES
(4, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:20:45'),
(5, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:20:52'),
(6, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:20:57'),
(7, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:21:05');

CREATE TABLE `flow` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `flow_id` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `flow` (`id`, `uid`, `flow_id`, `title`, `createdAt`) VALUES
(18, 'sIttvqkwEKFZRRtAIPN7f2o7b9A5sI3E', 'k70Qv0wPgXa5baUGALUbwGI2zWtBxGv4', 'chatbot1', '2024-03-01 17:10:49'),
(24, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'zcrGvkD1wREKhFsenBKMfE2cLq2NmeZG', 'New One', '2024-03-23 11:36:52');

CREATE TABLE `meta_api` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `waba_id` varchar(999) DEFAULT NULL,
  `business_account_id` varchar(999) DEFAULT NULL,
  `access_token` varchar(999) DEFAULT NULL,
  `business_phone_number_id` varchar(999) DEFAULT NULL,
  `app_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `meta_api` (`id`, `uid`, `waba_id`, `business_account_id`, `access_token`, `business_phone_number_id`, `app_id`, `createdAt`) VALUES
(1, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', '215653001634796', '215653001634796', 'EAAQI9Tit5nABOwhfXmrkfgf2E3ZBTKsyAWEbo6PWc78gLykb1bV9DFvx71HKcZBeQUXoucGqsO2leo3fm6ZCeShz5wde90j8e1oZBoQJW0FdmUWUpNY2VIpsWl8wcxfvNSBORMNYOKFkZBRqkppZBRLrliBHCHvuYDSVGPoKEml0lCkqYZAZCYU69n6bwGZC2smHH2dmLOdJXTy1pReXQwAIZD', '230745540118212', '1135749217773168', '2024-02-21 16:04:31');

CREATE TABLE `meta_templet_media` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `templet_name` varchar(999) DEFAULT NULL,
  `meta_hash` varchar(999) DEFAULT NULL,
  `file_name` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `meta_templet_media` (`id`, `uid`, `templet_name`, `meta_hash`, `file_name`, `createdAt`) VALUES
(1, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::aW1hZ2UvcG5n:ARbZ_YR4XOL2UFPt_K3R9adjink6idxU2Rooe2VsyT2oH1ED0o2xPscP4fvVtzuN4V0YpDCIa0TmFjchmtbEJzlGl0oPyI6AbRHrgzY1c-iRDA:e:1709043170:1135749217773168:100009064343338:ARZyzbyth_UasbaqhrU', 'bobC3BytM0IeJt2oxnGW1tFbeyHDCBVq.png', '2024-02-23 14:12:50'),
(2, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::dmlkZW8vbXA0:ARb86QRFDCjlzzyR1L5lqzHT_-Og1-UySJy2IQCSPkWCRHgN2pIsQY1K0N_uGv29Dq37Wk8rF_JGWsWw6WbFPchXyPoU0VXvBwtIZtl_e0ApZg:e:1709045531:1135749217773168:100009064343338:ARbIN3WFiuIExPFydgE\n4::dmlkZW8vbXA0:ARZqjXqknfRDqhbLOnC6pQImzb3ASRtM5A6YzTkuzbF_hDDIfEo03UrmVAxbF52IEWEYLgi7KsEjLTMdY5L0pmI8On2HsQ42NBV9_AlRO27HkQ:e:1709045531:1135749217773168:100009064343338:ARYHXt7gHaZNnj3nkpk\n4::dmlkZW8vbXA0:ARZDoTufqo6QjzGSmnlRxqGxfnzjC2Cgzr2SHU-Axe-nODQ1p-PROvcmY13OzqSRIII_1pKmkQYwXdI1NgNyCAE2e2L8Z_FIzCCAvAnGF0qnNQ:e:1709045531:1135749217773168:100009064343338:ARag9TNAillZ9BP5Ky8\n4::dmlkZW8vbXA0:ARaQCwoD5peQ-6jh7hAyMCGojEZ0LPZPJF_dE04dkVhjxfJ3HYtdGMcehoIf-uyzvFMvdnkAwsppfkZIzuCcNe6UQeT-oxQl8NJoQAhe5sdpKg:e:1709045531:1135749217773168:100009064343338:ARZhKEJgYn6R9-B9wQE\n4::dmlkZW8vbXA0:ARbwZbqyx9eOjZZcXKKIZ_xQa2yhBf8L1SL8Im0prBkCuGTM3ADmee9n26BpqEcSBhWkhnDb4fvPtZYUjdvqAN01SkPbYNVWN2XbxPiywiXgfQ:e:1709045532:1135749217773168:100009064343338:ARaprZCZDizyDeSZec4\n4::dmlkZW8vbXA0:ARbHhGzXMpWkouMBU6', 'HrMV3AIKVXT6jf3VOMV2x00fyQAlSdLi.mp4', '2024-02-23 14:52:12'),
(3, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::YXBwbGljYXRpb24vcGRm:ARbblwSvw0FVtJTPK27YW7ms-4d4rxFEKPIrDxiTzXlmnnR7BsF9pJ-pFeH2bs4JFrJgXhH0ZObMBAe7TNEhGXI0YjiH2W4U9y-IpINOXXeEIw:e:1709045848:1135749217773168:100009064343338:ARYoskOjf3fyfZgoAy4', '201MP6p5MfQlfWpOB6O6PXBo0zCtjkRS.pdf', '2024-02-23 14:57:28'),
(4, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::YXBwbGljYXRpb24vcGRm:ARaQRz9CfHCiIucG0HKOql5gLGyFv8eaoBRQs3496AiHAGyhp-jTEzrqj8j9vKoSqv5keNAhTQH-z6VCtj09eXHwdDTWYBCfMksPwia7yJ9WVg:e:1709045926:1135749217773168:100009064343338:ARYJkGVRVOqDGKGb_Lo', 'RTaeid6CVF07Y4N144gPgkkquM6uuiyA.pdf', '2024-02-23 14:58:47'),
(5, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::dmlkZW8vbXA0:ARYHXOLQCbkg8gG-gg57Mv6ROguqi9DkrKDbDJhO0cZ7PZFPPYxaJFURRafEPrf-ZcMfa-WUhWUOZ6BfC-zQMXN-ryfNHhLAla3w4HzKnK4OzA:e:1709643677:1135749217773168:100009064343338:ARYDSFmJgIut2yYjOBU\n4::dmlkZW8vbXA0:ARaifuiuGwJB7fS7594_h_omEQ_yHaHAoMEq1CZsSyFmGYoPN9lfKEgeMkkODOIR6gN5k2rveqYEnn_IA0veOeOHEHWdcBaG4soppxG5nSBBMw:e:1709643677:1135749217773168:100009064343338:ARYdCd-BBXRu1kla3fM\n4::dmlkZW8vbXA0:ARYJKLo4S9cR2BBsP4P78NnWQULHjYZLbMZAEogx8SFhTBO7oCQX5FcfgG57JCNGN4U4rUctJge5Fg-5YVSxA_mmtjoeyrzZBqFbHTdGpaiGIg:e:1709643678:1135749217773168:100009064343338:ARaGv_bfXm18j42dz7I\n4::dmlkZW8vbXA0:ARbhbm693vSx1fVdiebxj3bOUQdLcS_Bcfhbd0VS8Eg7Vn6T9VXpkJpdi7tPVDVBUhDaThQ0nAG0u6-UbLg4EMpojSAMJhuz-9S-1Tk5jMi0-A:e:1709643678:1135749217773168:100009064343338:ARZ98nM5x5U5n_ruDp0\n4::dmlkZW8vbXA0:ARanh3vSeM6iR5VjzKyHv6YjmUP6B9POzT6OBN9WLZ62WXichgzb-JHE4h1o8SipmGcprWUE_0__P9BWrs4_OTMTpv0ZrUG18iMzrohptA_vFg:e:1709643678:1135749217773168:100009064343338:ARZaUaZ9j86bNgTENd4\n4::dmlkZW8vbXA0:ARbibmRM-jEABk0ZIb', 't0k3bo4V2aEr1R76VLgYV6zWaKEXMlO5.mp4', '2024-03-01 13:01:18'),
(6, 'TeE9jFRPyoxFftGFrj3fnBBSQuSvdYBf', NULL, '4::aW1hZ2UvanBlZw==:ARYgiy0dohtwGyVs6OWc2N6LWHFuvLVK0zBfx5bec709p4CS5kk6WjZINlOB7yCOzDW0EdrRXOSBC5_5xVVGr7cp3nyuzXEIizWa3q1Zz0gVwA:e:1709748701:1135749217773168:100009064343338:ARae1yGcKVuZShEB5C4', '9j3huA1WsYUesScZm3uIw4an07EbbjU9.jpg', '2024-03-02 18:11:41'),
(7, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', NULL, '4::aW1hZ2UvanBlZw==:ARbP5m-vZDlF1FlgJ2Cq3lwstdiw9a-msHEvvbMWFrr9z9g8D8BGtjhjP3_U_YEq-VBw02JaMB0BI7rtB3dF1vgliDCY3VVONHo1S-NCovlClw:e:1710338790:2076319386057627:100010299762768:ARZdkBWkeQjB-ojngQc', '1hs4QfeNc3c0qbXIlpvcKHbL79j5TMmT.jpeg', '2024-03-09 14:06:30'),
(8, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'undefined', '4::aW1hZ2UvanBlZw==:ARY2YQPDRSqWrxBRlAc21KZ5M6wY0Xj8X34Ir2lxsjzpCbNtsOcCauINBOTjVCxTDnFcLEcv05l8fM6-9CehM_lvYkwyxVmnaaGWFlm9bYCrKA:e:1710340018:2076319386057627:100010299762768:ARbU4vPO_6d9HZIknU8', 'EEmB5fzklLV0LVoeflG1S37MuGCG3sL8.jpeg', '2024-03-09 14:26:59'),
(9, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'undefined', '4::dmlkZW8vbXA0:ARbmSM4EzcF74wudnk9ymNyjpgX_4vXqZPwVuxrxfcMUH06gPoFhOZoWpwhVCcbG7vq8Eg3DoFZ8DdG5JaakbtvOmhW3bE_9rVnlwGTK8H0d2Q:e:1711123586:1135749217773168:100009064343338:ARZxrLuQLnlaQUHONqY\n4::dmlkZW8vbXA0:ARa6mVa0qQPPEwFCfFjRNYkTE1cREmTQ0xGpvkjeLgAEepjs2AJx9M7ltP_swQItVMVFtz2hIwPOfnhFi6ipaOu4iHGth1v-IiqQlM7Ye5WLCA:e:1711123586:1135749217773168:100009064343338:ARaDXAs2Ub4n7tw3gA0\n4::dmlkZW8vbXA0:ARY2g1VLxTFRh82SPx8DjS32FeTpG3ad-EFDSFHoMfHWmLdh841vK1eSWrK0leDNU7ayenkhL-2rFJP23g7jqmQaJXq3McOU7moXDqaC-q5Jaw:e:1711123586:1135749217773168:100009064343338:ARYCFwIWGoxwWzeqpCE\n4::dmlkZW8vbXA0:ARbaAZKPBNdXZTje_PK1d4n_jwb4Y-1Asf-qYwrh34bLXxVAILMKtvHIYZDy_16t2I-7g2kjsERFYIKIYIglt6yPQjeSIxFRd_xrIbQZun3cnA:e:1711123586:1135749217773168:100009064343338:ARYqTqeaOlmDZh3Iqso\n4::dmlkZW8vbXA0:ARY81aJuQXxIon22TV1vt-9rg6JVUFwVHUuWSccmcmHxsExSBY-N0mX8M6GPIt_UgALd14m_xfUTYG9GSUEOJORfwyRcZdi5tRlSEWpR7Y8aBA:e:1711123586:1135749217773168:100009064343338:ARYyx9EjloJXkf6mzhk\n4::dmlkZW8vbXA0:ARa01cZtCZ07tFWCMy', 'Fp99JrmSKL7W89Awhii9cw6xViOCTU6d.mp4', '2024-03-18 16:06:27'),
(10, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'undefined', '4::dmlkZW8vbXA0:ARZNLloyNrMClA6Fmie_oXe2vtdG4xa5ebnh4SDzeafR0ey30GhrVX_VYRDyKd0SWoTNLqyEUut_bncjh9syeKHJskl2pWhZAHXeSTIhVVmXfg:e:1711123739:1135749217773168:100009064343338:ARbraqcmz2rlaRrVgaA\n4::dmlkZW8vbXA0:ARYTiWQOhGie9cOZhmhw3Xp0AfnRM5LsI0QGYDi6GujVqm4eLnGUdtDAH2GTcQtbvFMgIfGmAXFnliePBrYRtpB797sfDZc8ZJSJgAGcIsibdw:e:1711123739:1135749217773168:100009064343338:ARYk8UfcHOErjyBzsn8\n4::dmlkZW8vbXA0:ARbVbcDbnvvrIPEOn01HBXwnxl1mtdcsVtogeUoieiG8ym_o4Okvi0bmZaGcr9_FpEeTtmObeThE8mJ7EAOtrzrB35PzByLANeWDQ1ypNDASAw:e:1711123739:1135749217773168:100009064343338:ARbHO28Ra1JN7cSCfi0\n4::dmlkZW8vbXA0:ARYcYbseEV1x70gP5lFYmAP4nKH0D3MKdObe8qfB4J-RlcvzINJmxkQuEVL0zHjDdjMqMFn8g4yJkXQO5W7miPn_u7n3CQWnh-qDt7Nm8RfScQ:e:1711123739:1135749217773168:100009064343338:ARajcgFn_H2wHC7_6y8\n4::dmlkZW8vbXA0:ARbvu8NZ0cBmvHwh6bYgDDIc3YXt7cv_jFLtXQJxvipsMK3Hg9QxUYei9YESe03WxvdNdX6RQqHWVQzl4TLNGvmsP6VJLuSP56EPn6OQPcIpJg:e:1711123739:1135749217773168:100009064343338:ARbxFThO8aw5CG2usEE\n4::dmlkZW8vbXA0:ARaN-HN8fqUaChym0C', 'DdnXHv7sOdZdtzHZEE5UVxRBXIluTpND.mp4', '2024-03-18 16:09:00');

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `payment_mode` varchar(999) DEFAULT NULL,
  `amount` varchar(999) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `s_token` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `uid`, `payment_mode`, `amount`, `data`, `s_token`, `createdAt`) VALUES
(1, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_dqxp32XL9iS84rkGn0qUGDJxgk4FTB85', NULL, '2024-02-27 16:42:39'),
(2, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_kRgrG7W8VkmxjGdN9Y2hGSDgpRLLNfvE', NULL, '2024-02-27 16:43:40'),
(3, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_eKKkcWJoPucKohudnSQeRosVvrCrXcKh', NULL, '2024-02-27 16:44:28'),
(4, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_3c4ftk9IScaHBRw5e2PcWD3JybtvsS1R', NULL, '2024-02-27 16:44:56'),
(5, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_dwxUDZ8wvnAAfElrLyWcROWEtLtGMvzw', NULL, '2024-02-27 16:45:29'),
(6, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', 'STRIPE_gK9jBs2OfZe9S6CgWqYVrQrzzH3eDte5', 'cs_test_a1PeoPzWmC8fFWpBpUFgyLTfAmB7iSMCsj3Q2WouI0zqzJ0enxWTxV1Td2', '2024-02-27 16:46:02'),
(7, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '29', 'STRIPE_2FDktdAjiTouevxzdZPRvunGyIrNSlKJ', 'cs_test_a1VyGDjUiyxfhzVHNXbUx5d0rBSGFYalbFZRDtuILLPWX3OexKz6xss2kC', '2024-02-27 16:46:47'),
(8, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '29', '{\"id\":\"cs_test_a1XHP01IGKVfrxCdXR0MX3dME7qPnt2UdWcj2b1rjo5Azqici3CbEDN9WU\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":2900,\"amount_total\":2900,\"automatic_tax\":{\"enabled\":false,\"liability\":null,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http://localhost:3001/api/user/stripe_payment?order=STRIPE_JEe0ovSmj1ojVXPwArX5VI8QaQxkaS0k&plan=8\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1709101095,\"currency\":\"usd\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"after_submit\":null,\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":\"city\",\"country\":\"IN\",\"line1\":\"address\",\"line2\":null,\"postal_code\":\"110011\",\"state\":\"DL\"},\"email\":\"email@gmail.com\",\"name\":\"name\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1709187495,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"issuer\":null,\"metadata\":{},\"rendering_options\":null}},\"livemode\":false,\"locale\":\"en\",\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3OogTRSJ7RHyuQ0A0RAOOH4O\",\"payment_link\":null,\"payment_method_collection\":\"always\",\"payment_method_configuration_details\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http://localhost:3001/api/user/stripe_payment?order=STRIPE_JEe0ovSmj1ojVXPwArX5VI8QaQxkaS0k&plan=8\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 'cs_test_a1XHP01IGKVfrxCdXR0MX3dME7qPnt2UdWcj2b1rjo5Azqici3CbEDN9WU', '2024-02-28 06:18:14'),
(9, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '99', '{\"id\":\"cs_test_a1vJ4h0O6qHsFPI5xRVzu0xNyPJja6suv4lBv0dKrSNLmW2UdVoWacjuwC\",\"object\":\"checkout.session\",\"after_expiration\":null,\"allow_promotion_codes\":null,\"amount_subtotal\":9900,\"amount_total\":9900,\"automatic_tax\":{\"enabled\":false,\"liability\":null,\"status\":null},\"billing_address_collection\":null,\"cancel_url\":\"http://localhost:3001/api/user/stripe_payment?order=STRIPE_F65zhJWwDfSDvpeaIpSDzvyTerzyYFTp&plan=9\",\"client_reference_id\":null,\"client_secret\":null,\"consent\":null,\"consent_collection\":null,\"created\":1709101186,\"currency\":\"usd\",\"currency_conversion\":null,\"custom_fields\":[],\"custom_text\":{\"after_submit\":null,\"shipping_address\":null,\"submit\":null,\"terms_of_service_acceptance\":null},\"customer\":null,\"customer_creation\":\"if_required\",\"customer_details\":{\"address\":{\"city\":\"city\",\"country\":\"IN\",\"line1\":\"address\",\"line2\":null,\"postal_code\":\"110010\",\"state\":\"DL\"},\"email\":\"email@gmail.com\",\"name\":\"name\",\"phone\":null,\"tax_exempt\":\"none\",\"tax_ids\":[]},\"customer_email\":null,\"expires_at\":1709187586,\"invoice\":null,\"invoice_creation\":{\"enabled\":false,\"invoice_data\":{\"account_tax_ids\":null,\"custom_fields\":null,\"description\":null,\"footer\":null,\"issuer\":null,\"metadata\":{},\"rendering_options\":null}},\"livemode\":false,\"locale\":\"en\",\"metadata\":{},\"mode\":\"payment\",\"payment_intent\":\"pi_3OogUuSJ7RHyuQ0A0SSTfKx2\",\"payment_link\":null,\"payment_method_collection\":\"always\",\"payment_method_configuration_details\":null,\"payment_method_options\":{},\"payment_method_types\":[\"card\"],\"payment_status\":\"paid\",\"phone_number_collection\":{\"enabled\":false},\"recovered_from\":null,\"setup_intent\":null,\"shipping_address_collection\":null,\"shipping_cost\":null,\"shipping_details\":null,\"shipping_options\":[],\"status\":\"complete\",\"submit_type\":null,\"subscription\":null,\"success_url\":\"http://localhost:3001/api/user/stripe_payment?order=STRIPE_F65zhJWwDfSDvpeaIpSDzvyTerzyYFTp&plan=9\",\"total_details\":{\"amount_discount\":0,\"amount_shipping\":0,\"amount_tax\":0},\"ui_mode\":\"hosted\",\"url\":null}', 'cs_test_a1vJ4h0O6qHsFPI5xRVzu0xNyPJja6suv4lBv0dKrSNLmW2UdVoWacjuwC', '2024-02-28 06:19:45'),
(11, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '29', 'STRIPE_9NfMadmhVY7EipWgNRa2cKHMi0Z7eon3', 'cs_test_a1o5hbpRwjdib7ljjoWyfI64yG6gDyhIryjkjgRrKFuhbwuZKzD8UuP0qt', '2024-02-28 06:49:20'),
(12, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'STRIPE', '0', 'STRIPE_cmltSh007UFjH5eJILltM2YOgySYAwfl', NULL, '2024-02-29 16:50:29'),
(13, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'OFFLINE', '0', '{\"plan\":{\"id\":12,\"title\":\"Trial plan\",\"short_description\":\"this is a trial plan for 10 days\",\"allow_tag\":1,\"allow_note\":1,\"allow_chatbot\":1,\"contact_limit\":\"100\",\"allow_api\":1,\"is_trial\":1,\"price\":0,\"price_strike\":null,\"plan_duration_in_days\":\"10\",\"createdAt\":\"2024-02-26T06:59:02.000Z\"}}', NULL, '2024-02-29 16:53:17'),
(14, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'OFFLINE', '0', '{\"plan\":{\"id\":12,\"title\":\"Trial plan\",\"short_description\":\"this is a trial plan for 10 days\",\"allow_tag\":1,\"allow_note\":1,\"allow_chatbot\":1,\"contact_limit\":\"100\",\"allow_api\":1,\"is_trial\":1,\"price\":0,\"price_strike\":null,\"plan_duration_in_days\":\"10\",\"createdAt\":\"2024-02-26T06:59:02.000Z\"}}', NULL, '2024-02-29 16:54:27');

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `permanent` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `page` (`id`, `slug`, `title`, `image`, `content`, `permanent`, `createdAt`) VALUES
(3, 'privacy-policy', 'Privacy policy', 'yLUH6z8H3bQJzraErEpz7CQWepftq7D6.png', '<p>hey i am privacy policy</p>', 1, '2024-02-28 09:21:17'),
(4, 'terms-and-conditions', 'termns', 'yLUH6z8H3bQJzraErEpz7CQWepftq7D6.png', '<p>Terms Page</p>', 1, '2024-02-28 09:26:11'),

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `filename` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `partners` (`id`, `filename`, `createdAt`) VALUES
(43, '5l2kFGpo9l8qHmn1bhyOVpI2X0ChdHQy.png', '2024-04-06 10:50:48'),
(44, 'C5K9ldid2VbQzGN0FJn7RmYvAldBYTp0.png', '2024-04-06 10:50:52'),
(45, 'sicqacUYe65Ja4uQpqneMb9OHFSvgEwW.png', '2024-04-06 10:50:55'),
(46, 'iS6Ck9qESObGxbHvsnbjZwg0u1tmk5aQ.png', '2024-04-06 10:50:57'),
(47, 'Y9biaHPQHuBThrSG7tkhBY0nTSAToOyS.png', '2024-04-06 10:51:01'),
(48, 'IpHtSvouRUz43GCggo7fGOUqXQOQnbZ5.png', '2024-04-06 10:51:04'),
(49, 'viwWPuRX1BmwvTvTmo4pjzBLPyJ9xC9d.png', '2024-04-06 10:51:07');

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `name` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `phonebook` (`id`, `name`, `uid`, `createdAt`) VALUES
(9, 'testing', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', '2024-04-05 10:07:09');

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `allow_tag` int(1) DEFAULT 0,
  `allow_note` int(1) DEFAULT 0,
  `allow_chatbot` int(1) DEFAULT 0,
  `contact_limit` varchar(999) DEFAULT NULL,
  `allow_api` int(1) DEFAULT 0,
  `is_trial` int(1) DEFAULT 0,
  `price` bigint(20) DEFAULT NULL,
  `price_strike` varchar(999) DEFAULT NULL,
  `plan_duration_in_days` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `plan` (`id`, `title`, `short_description`, `allow_tag`, `allow_note`, `allow_chatbot`, `contact_limit`, `allow_api`, `is_trial`, `price`, `price_strike`, `plan_duration_in_days`, `createdAt`) VALUES
(8, 'Basic', 'This is a trial plan with a short period 30 days', 1, 1, 1, '100', 1, 0, 29, '39', '30', '2024-02-02 08:56:58'),
(9, 'Premium', 'This is a trial plan with a short period 30 days', 1, 1, 1, '100', 1, 0, 99, '199', '30', '2024-02-02 10:45:05'),
(12, 'Trial plan', 'this is a trial plan for 10 days', 1, 1, 1, '100', 1, 1, 0, NULL, '10', '2024-02-26 12:29:02');

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `socket_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `rooms` (`id`, `uid`, `socket_id`, `createdAt`) VALUES
(874, 'sIttvqkwEKFZRRtAIPN7f2o7b9A5sI3E', 'u6FiF8KScmQ0aUk8AAAB', '2024-03-02 09:59:55'),
(1104, 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'fTvY-iiTzx9P4jFIAAAD', '2024-04-09 12:10:45');

CREATE TABLE `smtp` (
  `id` int(11) NOT NULL,
  `email` varchar(999) DEFAULT NULL,
  `host` varchar(999) DEFAULT NULL,
  `port` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `smtp` (`id`, `email`, `host`, `port`, `password`, `createdAt`) VALUES
(1, 'email@gmail.com', 'smtp@gmail.com', '465', 'password', '2024-02-28 16:44:12');

CREATE TABLE `templets` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `reviewer_name` varchar(999) DEFAULT NULL,
  `reviewer_position` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `testimonial` (`id`, `title`, `description`, `reviewer_name`, `reviewer_position`, `createdAt`) VALUES
(1, '“Highly customisable and friendly\"', 'We work in the hotel business, so keeping in touch with people travelling is very easy using WhatsApp. WhatsCRm help us to have multiple people answering guests. It also allows us to automate basic replies such as the address', 'Eduardo Zeballos', 'CEO', '2024-02-27 14:12:05'),
(3, '\"Cutting-edge and Intuitive Communication Solution\"', '\"At our design studio, effective communication is key to delivering exceptional results for our clients. WhatsCRm has revolutionized our workflow by streamlining communication channels and allowing our team to collaborate seamlessly. With its intuitive interface and customizable features, we can effortlessly manage client inquiries, share project updates, and ensure timely responses. WhatsCRm has become an indispensable tool for enhancing productivity and client satisfaction.\"', 'Sophia Chen', 'Creative Director', '2024-03-01 15:44:21'),
(4, '\"Efficient and Versatile Messaging Platform\"', '\n\"Efficient and Versatile Messaging Platform\"\n\n\"Being in the real estate industry demands constant communication with clients and prospects. WhatsCRm has been a game-changer for our agency, providing us with an efficient and versatile messaging platform. We can easily organize client conversations, schedule property viewings, and follow up on leads all in one place. Its user-friendly interface and robust features have significantly boosted our team\'s productivity and client engagement.\"', 'Jonathan Rodriguez', 'Real Estate Agent', '2024-03-01 15:45:07');

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` varchar(999) DEFAULT 'user',
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `mobile_with_country_code` varchar(999) DEFAULT NULL,
  `timezone` varchar(999) DEFAULT 'Asia/Kolkata',
  `plan` longtext DEFAULT NULL,
  `plan_expire` varchar(999) DEFAULT NULL,
  `trial` int(1) DEFAULT 0,
  `api_key` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `user` (`id`, `role`, `uid`, `name`, `email`, `password`, `mobile_with_country_code`, `timezone`, `plan`, `plan_expire`, `trial`, `api_key`, `createdAt`) VALUES
(1, 'user', 'lWvj6K0xI0FlSKJoyV7ak9DN0mzvKJK8', 'John Doe', 'user@user.com', '$2b$10$gf6jkuByoJUOF23GAl.WuesT6DUGiCA1LT8nnYWvQcXzfePGu4rrG', '+19876543211', 'Asia/Kolkata', '{\"id\":12,\"title\":\"Trial plan\",\"short_description\":\"this is a trial plan for 10 days\",\"allow_tag\":1,\"allow_note\":1,\"allow_chatbot\":1,\"contact_limit\":\"100\",\"allow_api\":1,\"is_trial\":1,\"price\":0,\"price_strike\":null,\"plan_duration_in_days\":\"10\",\"createdAt\":\"2024-02-26T06:59:02.000Z\"}', '1710089667677', 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiJsV3ZqNksweEkwRmxTS0pveVY3YWs5RE4wbXp2S0pLOCIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzA5Mjc3Mjg3fQ.8P8yaIc_XiHCns1Lr54EFQBitsGUN3EaP4RffEh7iZw', '2024-02-02 13:10:33');

CREATE TABLE `web_private` (
  `id` int(11) NOT NULL,
  `pay_offline_id` varchar(999) DEFAULT NULL,
  `pay_offline_key` longtext DEFAULT NULL,
  `offline_active` int(1) DEFAULT 0,
  `pay_stripe_id` varchar(999) DEFAULT NULL,
  `pay_stripe_key` varchar(999) DEFAULT NULL,
  `stripe_active` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `web_private` (`id`, `pay_offline_id`, `pay_offline_key`, `offline_active`, `pay_stripe_id`, `pay_stripe_key`, `stripe_active`, `createdAt`) VALUES
(1, 'Pay offline', 'Pay offline on this account number xxxxxxxxx\nand send a screenshot to us on this email xxx@xxx.com', 1, 'pk_test_51NGI3WSJ7RHyuQ0ARpYwHAK6WJYygcXmJTwwcVZsvusgQUSDMybxIpwt86U8uSp5RFBhAn3O9xxxxxxxxxxxxxxxxxxxxxxxxx', 'sk_test_51NGI3WSJ7RHyuQ0AG7eC7wD7kJrpTFKCnNaj3IwIIUVbJcPxE33YonYSyjJt9fEqEfEHWtpZ72Hy0Txxxxxxxxxxxxxxxxxxxxxxxxx', 1, '2024-02-26 17:06:06');

CREATE TABLE `web_public` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(999) DEFAULT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `custom_home` varchar(999) DEFAULT NULL,
  `is_custom_home` int(1) DEFAULT 0,
  `meta_description` longtext DEFAULT NULL,
  `currency_symbol` varchar(999) DEFAULT NULL,
  `chatbot_screen_tutorial` varchar(999) DEFAULT NULL,
  `broadcast_screen_tutorial` varchar(999) DEFAULT NULL,
  `home_page_tutorial` varchar(999) DEFAULT NULL,
  `login_header_footer` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `web_public` (`id`, `currency_code`, `logo`, `app_name`, `custom_home`, `is_custom_home`, `meta_description`, `currency_symbol`, `chatbot_screen_tutorial`, `broadcast_screen_tutorial`, `home_page_tutorial`, `login_header_footer`) VALUES
(1, 'USD', 'Sdng4QM0Xx1r6IGWY0hgxNtAedlxnoOF.png', 'whatsCRM', 'https://google.com', 0, 'des updated', '$', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 1);
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `agent_chats`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `agent_task`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `broadcast`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `broadcast_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `chat_widget`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `meta_api`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `meta_templet_media`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `templets`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `web_private`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `web_public`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `agent_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `agent_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `broadcast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `broadcast_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `chat_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `flow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `meta_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `meta_templet_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;

ALTER TABLE `smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `templets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `web_private`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `web_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
