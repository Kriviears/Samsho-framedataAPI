BEGIN;

TRUNCATE
  info,
  notes,
  moves,
  users,
  characters;

INSERT INTO characters (name, thumbnail, banner)
VALUES
  ('Haomaru', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Hoahmaru/thumbnail.png', 'Haomaru Banner'),
  ('Nakoruru', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Nakoruru/thumbnail.png', 'Nakoruru Banner'),
  ('Charlotte', 'https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Charlotte/thumbnail.png', 'Charlotte Banner'),
  ('Basara','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Basara/thumbnail.png','Basara Banner'),
  ('Darli Dagger','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Darli%20Dagger/thumbnail.png','Darli Banner'),
  ('Earthquake','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Earthquake/thumbnail.png','Earthquake Banner'),
  ('Galford','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Galford/thumbnail.png','Galford Banner'),
  ('Genjuro','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Genjuro/thumbnail.png','Genjuro Banner'),
  ('Hanzo','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Hanzo/thumbnail.png','Hanzo Banner'),
  ('Jubei','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Jubei/thumbnail.png','Jubei Banner'),
  ('Kazuki','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Kazuki/thumbnail.png','Kazuki Banner'),
  ('Kyoshiro','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Kyoshiro/thumbnail.png','Kyoshiro Banner'),
  ('Rimururu','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Rimururu/thumbnail.png','Rimururu Banner'),
  ('Shiki','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Shiki/thumbnail.png','Shiki Banner'),
  ('Shizumaru','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Shizumaru/thumbnail.png','Shizumaru Banner'),
  ('Tam Tam','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Tam%20Tam/thumbnail.png','TamTam Banner'),
  ('Ukyo','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Ukyo/thumbnail.png','Ukyo Banner'),
  ('Wan-fu','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Wan-fu/thumbnail.png','Wanfu Banner'),
  ('Wu Ruixiang','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Wu-Ruixiang/thumbnail.png','Wu Banner'),
  ('Yashamaru','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Yashamaru/thumbnail.png','Yashamaru'),
  ('Yoshitora','https://raw.githubusercontent.com/Kriviears/frame-data-image-storage/master/samurai-sho/Yoshitora/thumbnail.png','Yoshitora Banner');

INSERT INTO moves (character_id, command, startUp, onBlock, onHit, recovery, cancel, super_cancel, properties, damage, attribute, special)
VALUES
  (1, 'Close A', 5, -5, -2, 19, true, true, '', 30, '', false),
  (1, 'Close B', 8, -12, -1, 29, true, true, '', 80, '', false),
  (1, 'Close C', 15, -28, -3, 45, false, true, '', 220, '', false),
  (1, 'Far A', 7, -5, -9, 28, true, true, '', 30, '', false),
  (1, 'Far B', 14, -12, -4, 38, false, true, '', 100, '', false),
  (1, 'Far C', 27, -16, -7, 73, false, true, '', 300, '', false),
  (1, 'Close 2A', 5, -5, -1, 18, true, true, '', 30,'', false),
  (1, 'Close 2B', 6, -12, 3, 23, true, true, '', 80, '', false),
  (1, 'Far 2A', 8, -5, -4, 24, true, true, '', 30, '', false),
  (1, 'Far 2B', 11, -12, 1, 30, true, true, '', 90, '', false),
  (1, '2C', 19, -28, -7, 53, true, true, '', 150, '', false),
  (1, '2D', 5, -3, 0, 17, false, false, '', 20, 'low', false),
  (1, '5D', 12, -6, -3, 27, false, false, '', 50, '', false),
  (1, '3D', 12, -22, 79, 57, false, false, '', 70, 'low', false),
  (1, '6D', 7, -7, -4, 22, false, false, '', 30, 'low', false),
  (1, 'JA', 8, null, null, null, false, false, '', 50, 'overhead', false),
  (1, 'JB', 10, null, null, null, false, false, '', 100, 'overhead', false),
  (1, 'JC', 13, null, null, null, false, false, '', 160, 'overhead', false),
  (1, 'JD', 8, null, null, null, false, false, '', 30, 'overhead', false),
  (1, '66A', 5, -12, -7, 32, false, false, '', 50, '', false),
  (1, '66B', 8, -35, -1, 29, true, true, '', 80, '', false),
  (1, '66C', 12, -35, -1, 29, false, true, '', 140, '', false),
  (1, '66D', 10, -31, 77, 51, false, false, 'Knockdown', 70, 'low', false),
  (1, '5C+D', 3, null, 20, 74, false, false, 'Scales combo x0.8', null, 'throw', false),
  (1, '4C+D', 5, null, 25, 74, false, false, 'Scales combo x0.8', null, 'throw', false),
  (1, 'A+B', 1, null, null, 38, false, false, 'Invincible frames 1-10', null, '', false),
  (1, '236A+B', 2, null, null, 46, false, false, '', null, '', true),
  (1, 'B+C', 20, -11, 2, 43, false, false, '', 70, 'overhead', false),
  (1, '236A', 33, -5, null, 57, false, false, 'Knockdown', null, '', true),
  (1, '236B', 35, -14, null, 68, false, false, 'Knockdown', null, '', true),
  (1, '236C', 37, -24, null, 80, false, false, 'Knockdown', null, '', true),
  (1, '623A', 7, -30, 91, 58, false, false, 'Knockdown', 100, '', true),
  (1, '623B', 7, -51, 86, 78, false, false, 'Knockdown', 120, '', true),
  (1, '623C', 7, -71, 84, 100, false, false, 'Knockdown', 180, '', true),
  (1, '623SP', 7, -71, 98, 100, false, false, 'Knockdown', 210, '', true),
  (1, 'dash 623A', 7, -30, 91, 58, false, false, 'Knockdown', 100, '', true),
  (1, 'dash 623B', 7, -50, 86, 78, false, false, 'Invincible frames 1-8, Knockdown', 120, '', true),
  (1, 'dash 623C', 7, -71, 84, 100, false, false, 'Invincible frames 1-8, Knockdown', 180, '', true),
  (1, 'dash 623C(R)', 7, -71, 98, 100, false, false, 'Invincible frames 1-8, Knockdown', 210, '', true),
  (1, '421A', 25, -25, 46, 81, false, false, 'Knockdown', 100, 'overhead', true),
  (1, '421B', 26, -25, 46, 85, false, false, 'Knockdown', 120, 'overhead', true),
  (1, '421C', 33, -25, 46, 92, false, false, 'Knockdown', 180, 'overhead', true),
  (1, '214D', 15, -16, 95, 43, false, false, 'Knockdown', 80, '', true),
  (1, '236B+C', 14, -41, 68, null, false, false, 'Knockdown', 490, '', true),
  (1, '641236C+D', 20, -45, 54, null, false, false, 'Invincible frames 1-10, Knockdown', 700, '', true),