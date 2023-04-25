USE mysql_project_db;

INSERT INTO users (username, password)
VALUES ("banana", "$2b$10$/1UfZvXYrToAGa5mO1IbfesmFQJ42WIlI60swCyafhzrB/2KcD1RK");

INSERT INTO artist (name, bio)
VALUES
("Andy Warhol", "Andy Warhol was born in 1928, in Pennsylvania, to a mother who had a shared passion for drawing and creating. Growing up, Warhol suffered from Chorea  a neurological disorder that impacts the face, shoulders, and hips which kept him home from school for numerous days. This left Warhol often alone, to escape into his made up world inspired by comic books and photographs. From a young age he would watch his mom draw, and use art as an outlet for his pain and inner thoughts. His health struggles lead him to develop a unique sense of style and fascination for masking his personal appearance, using himself as an expression of art. He quickly became recognizable for evolving his looks throughout the decades by trying new clothing, wigs, and makeup. He treated his body as a personal extension of  his artwork. Warhol made his mark on the art world through his duality: as both an artist and a businessman. He was one of the first artists of his time to see the blatant cross yet clash between advertising and fine art- and reinvented the way viewers define what art is."), 
("Roy Lictenstein", "Roy Fox Lichtenstein (October 27, 1923 to September 29, 1997) was an American pop artist. During the 1960s, along with Andy Warhol, Jasper Johns, and James Rosenquist, he became a leading figure in the new art movement. His work defined the premise of pop art through parody. Inspired by the comic strip, Lichtenstein produced precise compositions that documented while they parodied, often in a tongue-in-cheek manner. His work was influenced by popular advertising and the comic book style. His artwork was considered to be  disruptive. He described pop art as not American painting but actually industrial painting. His paintings were exhibited at the Leo Castelli Gallery in New York City. Whaam! and Drowning Girl and Look Mickey proved to be his most influential works. His most expensive piece is Masterpiece, which was sold for $165 million in January 2017."),
("Jackson Pollock", "Paul Jackson Pollock was an American painter and a major figure in the abstract expressionist movement. He was widely noticed for his drip technique of pouring or splashing liquid household paint onto a horizontal surface, enabling him to view and paint his canvases from all angles."),
("Bruce Nauman", "Bruce Nauman is an American artist. His practice spans a broad range of media including sculpture, photography, neon, video, drawing, printmaking, and performance. Nauman lives near Galisteo, New Mexico."),
("Felix Gonzalez-Torres", "Félix González-Torres or Felix Gonzalez-Torres was a Cuban-born American visual artist. He lived and worked primarily in New York City between 1979 and 1995 after attending university in Puerto Rico."),
("Mary Cassatt", "Mary Stevenson Cassatt was an American painter and printmaker. She was born in Allegheny, Pennsylvania, but lived much of her adult life in France, where she befriended Edgar Degas and exhibited with the Impressionists."),
("Pierre-Auguste Renoir", "Pierre-Auguste Renoir was a French artist who was a leading painter in the development of the Impressionist style. As a celebrator of beauty and especially feminine sensuality, it has been said that \'Renoir is the final representative of a tradition which runs directly from Rubens to Watteau.\'"),
("John Singer Sargent", "ohn Singer Sargent was an American expatriate artist, considered the \'leading portrait painter of his generation\' for his evocations of Edwardian-era luxury. He created roughly 900 oil paintings and more than 2,000 watercolors, as well as countless sketches and charcoal drawings."),
("Claude Monet", "Oscar-Claude Monet was a French painter and founder of impressionist painting who is seen as a key precursor to modernism, especially in his attempts to paint nature as he perceived it."),
("Edgar Degas", "Edgar Degas was a French Impressionist artist famous for his pastel drawings and oil paintings. Degas also produced bronze sculptures, prints and drawings. Degas is especially identified with the subject of dance; more than half of his works depict dancers"),
("Salvador Dali", "Salvador Domingo Felipe Jacinto Dalí i Domènech, Marquess of Dalí of Púbol gcYC, known as Salvador Dalí, was a Spanish surrealist artist renowned for his technical skill, precise draftsmanship, and the striking and bizarre images in his work"),
("Kurt Sligmann", "Kurt Leopold Seligmann was a Swiss-American Surrealist painter, engraver, and occultist. He was known for his fantastic imagery of medieval troubadors and knights in macabre rituals and inspired by the carnival held annually in his native Basel, Switzerland."),
("Piet Mondrian", "Pieter Cornelis Mondriaan, after 1906 known as Piet Mondrian, was a Dutch painter and art theoretician who is regarded as one of the greatest artists of the 20th century."),
("Pablo Picasso", "Pablo Ruiz Picasso was a Spanish painter, sculptor, printmaker, ceramicist and theatre designer who spent most of his adult life in France."),
("Vincent van Gogh", "Vincent Willem van Gogh was a Dutch Post-Impressionist painter who posthumously became one of the most famous and influential figures in Western art history. In a decade, he created about 2,100 artworks, including around 860 oil paintings, most of which date from the last two years of his life."),
("Georges Seurat", "Georges Pierre Seurat was a French post-Impressionist artist. He devised the painting techniques known as chromoluminarism and pointillism and used conté crayon for drawings on paper with a rough surface"),
("Edward Hopper", "Edward Hopper was an American realist painter and printmaker. While he is widely known for his oil paintings, he was equally proficient as a watercolorist and printmaker in etching. Hopper created subdued drama out of commonplace subjects \'layered with a poetic meaning\', inviting narrative interpretations."),
("Grant Wood", "Grant DeVolson Wood was an American painter and representative of Regionalism, best known for his paintings depicting the rural American Midwest. He is particularly well known for American Gothic, which has become an iconic example of early 20th-century American art."),
("Bernat Martorell", "Bernat Martorell was the leading painter of Barcelona, in modern-day Spain. He is considered to be the most important artist of the International Gothic style in Catalonia. Martorell painted retable panels and manuscript illuminations, and carved sculptures and also provided designs for embroideries."),
("Frank Lloyd Wright", "Frank Lloyd Wright was an American architect, designer, writer, and educator. He designed more than 1,000 structures over a creative period of 70 years."),
("Ivan Albright", "Ivan Le Lorraine Albright was an American painter, sculptor and print-maker most renowned for his self-portraits, character studies, and still lifes. Due to his technique and dark subject matter, he is often categorized among the Magic Realists and is sometimes referred to as the \'master of the macabre\'");

INSERT into artwork (artist_id, name, image, description, year, medium, location, collection)
VALUES
(1, "Marilyn", "monroe_warhol.jpg", "1953 publicity photograph of Marilyn Monroe in the film Niagara, which Warhol transformed with intentionally off-register printing and garish combinations of psychedelic colors.", 1967, "Acrylic and silkscreen ink on linen", 150, "Contemporary Art"),
(1, "Liz #3", "liz_warhol.jpg", "Warhol celebrated both products and personalities, giving equal weight to soup cans and movie stars. He began using images of Elizabeth Taylor in early 1962. Her beauty and allure fueled interest in the sordid tragedies of her personal life, which included failed marriages, love affairs, and a near-death experience that occurred while filming Cleopatra in 1963.", 1963, "Acrylic and silkscreen ink on linen", 150, "Contemporary Art"),
(2, "Brushstrokes", "brushstrokes_lichtenstein.jpg", "Lichtenstein made a series of paintings depicting enlarged brushstrokes. The brushstroke, as the token of the artist""s personal expression, is depersonalised. The motif is screenprinted onto paper in a manner usually associated with advertising or publishing to the effect that it seems banal and everyday.", 1967, "Color screenprint on white wove paper", 120, "Contemporary Art"),
(2, "Reflections on Girl", "girl_lichtenstein.jpg", "Reflections on Girl 1990 is from a group of seven Reflections prints which Lichtenstein worked on at Tyler Graphics in Mount Kisco, New York during 1989 and 1990. These prints are recorded in the artists catalogue raisonné and described as combining lithography, screenprint, and relief with collage and embossing.", 1990, "Lithograph, screenprint on paper and metalised pvc on paper", 120, "Contemporary Art"),
(3, "Greyed Rainbow", "greyRainbow_pollock.jpg", "Greyed Rainbow is a quintessential example of action painting. The paint application ranges from thick chunks squeezed directly from a tube to thin, meandering lines poured from a container with a small hole or squirted from a baster. The work is predominantly black, white, gray, and silver; in the bottom third of the canvas.", 1953, "Oil on linen", 120, "Contemporary Art"),
(4, "Human Nature / Life Death", "humanNature_nauman.jpg", "Three pairs of words, antithetical in their connotations, line the six-foot circumference: life and death, love and hate, and pleasure and pain. In the center, human, animal, and nature are repeated in stacked sets of two. Each word blinks independently, ordered so that over several minutes all possible permutations are displayed.", 1983, "Neon tubing with clear glass tubing suspension frames", 120, "Contemporary Art"),
(5, "Untitled (Portrait of Ross in L.A.)", "untitled_fonzalezTorres.jpg", "“Untitled” (Portrait of Ross in L.A.) consists of an ideal weight of 175 pounds of shiny, commercially distributed candy. The works physical form and scale change with each display, affected by its placement in the gallery as well as audience interactions. As visitors take candy, the configuration changes, linking the participatory action with loss—even though the work holds the potential for endless replenishment.", 1991, "Candies in variously colored wrappers, endless supply", 120, "Contemporary Art"),
(6, "The Child's Bath", "childBath_cassatt.jpg", "Mary Cassatt addressed the theme for which she is best known—women and children—while also experimenting with compositional elements of Japanese art.", 1893, "Oil on canvas", 273, "Impressionism"),
(7, "Two Sisters (On the Terrace)", "twoSisters_renoir.jpg", "Renoir depicted the radiance of lovely young women on a warm and beautiful day. The older girl, wearing the female boaters blue ﬂannel, is posed in the center of the evocative landscape backdrop of Chatou, a suburban town where the artist spent much of the spring of 1881.", 1881, "Oil on canvas", 201, "Impressionism"),
(8, "Mrs. George Swinton (Elizabeth Ebsworth)", "swinton_sargent.jpg", "Mrs. George Swinton epitomizes the painterly virtuosity that made John Singer Sargent one of the most fashionable portraitists in late-19th-century Europe and America. Extravagant color and brushwork were central to Sargents success, as was his ability to present a refined and appealing image of his sitter.", 1897, "Oil on canvas", 273, "Impressionism"),
(9, "Water Lilies", "waterLilies_monet.jpg", "The focal point of these paintings was the artists beloved ﬂower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", 1906, "Oil on canvas", 243, "Impressionism"),
(10, "Cafe Singer", "cafeSinger_degas.jpg", "Degas was a French artist known for his pastels, paintings, sculptures, prints, and charcoal drawings. This pastel is part of a series of works that have cafe-concert singers as their subject. Degas was a habitué of those places, especially the Cafe des Ambassadeurs, and he uses them as the settings for many of his works.", 1897, "Oil on canvas", 226, "Impressionism"),
(11, "A Chemist Lifting with Extreme Precaution the Cuticle of a Grand Piano", "chemist_dali.jpg", "The painting is an example of Dalí""s distinctive, avant-garde brand of surrealism as well as a curious example of Dalí""s mysterious relationship with Judaism.", 1936, "Oil on canvas", 289, "Modern Art"),
(12, "Exotic Garden", "exoticGarden_seligmann.jpg", "No Description", 1954, "Oil on canvas", 289, "Modern Art"),
(13, "Composition (No. 1) Gray-Red", "composition_mondrian.jpg", "In 1917 Mondrian joined the De Stijl movement and began to develop a purely visual language of verticals and horizontals, restricting his compositions to predominantly off-white grounds divided by black rectilinear lines that framed smaller blocks of primary colors.", 1935, "Oil on canvas", 289, "Modern Art"),
(14, "Nude under a Pine Tree", "nude_picasso.jpg", "In Nude under a Pine Tree, Pablo Picasso looked to the long tradition of figurative painting, including the female nudes of Francisco de Goya. In contrast to his predecessors, however, Picasso placed the monumental figure on rocky terrain, rather than on a plush chaise. He also used bold, modernist forms that reference his own earlier artistic styles: the flattened face, segmented legs and torso, and multiple viewpoints recall some of his Cubist works, and the color palette evokes his classical style of the 1920s.", 1959, "Oil on canvas", 394, "Modern Art"),
(14, "Man with a Pipe", "pipe_picasso.jpg", "This piece has a quiet humor and feeling of composure. The use of Pointillist-style dots, with their stippled effect and the inclusion of a painted marble-effect herald Picasso""s return to color exploration and his interest in the development of interior design processes. The incorporation of frieze-like techniques, with areas of architectural scrolling, creates a sense of movement to oppose the tension of the solid piling up of the angular blocks.", 1915, "Oil on canvas", 391, "Modern Art"),
(15, "The Bedroom", "bedroom_vanGogh.jpg", " Van Gogh conceived the first Bedroom in October 1888, a month after he moved into his “Yellow House” in Arles, France. This moment marked the first time the artist had a home of his own, and he had immediately and enthusiastically set about decorating, painting a suite of canvases to fill the walls. Completely exhausted from the effort, he spent two-and-a-half days in bed and was then inspired to create a painting of his bedroom.", 1889, "Oil on canvas", 241, "Modern Art"),
(16, "A Sunday on La Grande Jatte", "sunday_seurat.jpg", "Seurat painted A Sunday on La Grande Jatte—1884 using pointillism, a highly systematic and scientific technique based on the hypothesis that closely positioned points of pure color mix together in the viewers eye. He began work on the canvas in 1884 (and included this date in the title) with a layer of small, horizontal brushstrokes in complementary colors. He next added a series of dots that coalesce into solid and luminous forms when seen from a distance.", 1884, "Oil on canvas", 240, "Modern Art"),
(17, "Nighthawks", "nighthawks_hopper.jpg", "About Nighthawks Edward Hopper recollected, unconsciously, probably, I was painting the loneliness of a large city. In an all-night diner, three customers sit at the counter opposite a server, each appear to be lost in thought and disengaged from one another.", 1942, "Oil on canvas", 262, "Essentials"),
(18, "American Gothic", "agothic_wood.jpg", "In American Gothic, Grant Wood directly evoked images of an earlier generation by featuring a farmer and his daughter posed stiffly and dressed as if they were, as the artist put it, “tintypes from my old family album.” They stand outside of their home, built in an 1880s style known as Carpenter Gothic. Wood had seen a similar farmhouse during a visit to Eldon, Iowa.", 1930, "Oil on Beaver Board", 263, "Essentials"),
(19, "Saint George and the Dragon", "saintGeorge_martorell.jpg", "Depicted here is the most frequently represented episode from the popular legend of Saint George, in which the model Christian knight saves a town and rescues a beautiful princess. Conceived in the elegant, decorative International Gothic style, the painting was originally the center of an altarpiece dedicated to Saint George that was apparently made for the chapel of the palace of the Catalan government in Barcelona. ", 1434, "Tempera on panel", 237, "Essentials"),
(20, "Triptych Window", "triptych_wright.jpg", "This colorful, whimsical triptych window is from the Avery Coonley Playhouse, a small structure that Frank Lloyd Wright designed as an addition to the Coonleys suburban Chicago estate, which he had previously completed in 1908. Louis Sullivans foremost student, Wright continued his teachers search for an indigenous American architecture.", 1912, "Clear and colored leaded glass in oak frames", 262, "Essentials"),
(21, "Into the World There Came a Soul Called Ida", "ida_albright.jpg", "Holding a mirror, powdering her chest, and surrounded with accoutrements of fashion and beauty, the figure portrayed here does not necessarily inspire thoughts of youth and vibrancy. Rather, as one critic put it when this painting was first exhibited, he saw a “woman with flesh the color of a corpse drowned six weeks.” Ida Rogers herself was 19 years old at the time she posed for the artist. With his hyperbolic version of realism, Ivan Albright laboriously transformed his sitter into a vision of his own making. ", 1929, "Oil on canvas", 262, "Essentials");
