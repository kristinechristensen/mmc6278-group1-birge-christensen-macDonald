USE mysql_project_db;

INSERT INTO users (username, password)
VALUES ("banana", "$2b$10$/1UfZvXYrToAGa5mO1IbfesmFQJ42WIlI60swCyafhzrB/2KcD1RK");

INSERT INTO artist (name)
VALUES
("Andy Warhol"), 
("Roy Lictenstein"),
("Jackson Pollock"),
("Bruce Nauman"),
("Felix Gonzalez-Torres"),
("Mary Cassatt"),
("Pierre-Auguste Renoir"),
("John Singer Sargent"),
("Claude Monet"),
("Edgar Degas"),
("Salvador Dali"),
("Kurt Sligmann"),
("Piet Mondrian"),
("Pablo Picasso"),
("Vincent van Gogh"),
("Georges Seurat"),
("Edward Hopper"),
("Grant Wood"),
("Bernat Martorell"),
("Frank Lloyd Wright"),
("Ivan Albright");

INSERT into artwork (artist_id, name, image, description, year, medium, location, collection)
VALUES
(1, "Marilyn", "monroe_warhol.jpg", "1953 publicity photograph of Marilyn Monroe in the film Niagara, which Warhol transformed with intentionally off-register printing and garish combinations of psychedelic colors.", 1967, "Acrylic and silkscreen ink on linen", 150, "Contemporary Art"),
(1, "Liz #3", "liz_warhol.png", "Warhol celebrated both products and personalities, giving equal weight to soup cans and movie stars. He began using images of Elizabeth Taylor in early 1962. Her beauty and allure fueled interest in the sordid tragedies of her personal life, which included failed marriages, love affairs, and a near-death experience that occurred while filming Cleopatra in 1963.", 1963, "Acrylic and silkscreen ink on linen", 150, "Contemporary Art"),
(2, "Brushstrokes", "brushstrokes_lichtenstein.png", "Lichtenstein made a series of paintings depicting enlarged brushstrokes. The brushstroke, as the token of the artist""s personal expression, is depersonalised. The motif is screenprinted onto paper in a manner usually associated with advertising or publishing to the effect that it seems banal and everyday.", 1967, "Color screenprint on white wove paper", 120, "Contemporary Art"),
(2, "Reflections on Girl", "girl_lichtenstein.png", "Reflections on Girl 1990 is from a group of seven Reflections prints which Lichtenstein worked on at Tyler Graphics in Mount Kisco, New York during 1989 and 1990. These prints are recorded in the artists catalogue raisonné and described as combining lithography, screenprint, and relief with collage and embossing.", 1990, "Lithograph, screenprint on paper and metalised pvc on paper", 120, "Contemporary Art"),
(3, "Greyed Rainbow", "greyRainbow_pollock.png", "Greyed Rainbow is a quintessential example of action painting. The paint application ranges from thick chunks squeezed directly from a tube to thin, meandering lines poured from a container with a small hole or squirted from a baster. The work is predominantly black, white, gray, and silver; in the bottom third of the canvas.", 1953, "Oil on linen", 120, "Contemporary Art"),
(4, "Human Nature / Life Death", "humanNature_nauman.png", "Three pairs of words, antithetical in their connotations, line the six-foot circumference: life and death, love and hate, and pleasure and pain. In the center, human, animal, and nature are repeated in stacked sets of two. Each word blinks independently, ordered so that over several minutes all possible permutations are displayed.", 1983, "Neon tubing with clear glass tubing suspension frames", 120, "Contemporary Art"),(5, "Untitled (Portrait of Ross in L.A.)", "untitled_fonzalezTorres.png", "“Untitled” (Portrait of Ross in L.A.) consists of an ideal weight of 175 pounds of shiny, commercially distributed candy. The works physical form and scale change with each display, affected by its placement in the gallery as well as audience interactions. As visitors take candy, the configuration changes, linking the participatory action with loss—even though the work holds the potential for endless replenishment.", 1991, "Candies in variously colored wrappers, endless supply", 120, "Contemporary Art"),
(6, "The Child""s Bath", "childBath_cassatt.png", "Mary Cassatt addressed the theme for which she is best known—women and children—while also experimenting with compositional elements of Japanese art.", 1893, "Oil on canvas", 273, "Impressionism"),
(7, "Two Sisters (On the Terrace)", "twoSisters_renoir.png", "Renoir depicted the radiance of lovely young women on a warm and beautiful day. The older girl, wearing the female boater’s blue ﬂannel, is posed in the center of the evocative landscape backdrop of Chatou, a suburban town where the artist spent much of the spring of 1881.", 1881, "Oil on canvas", 201, "Impressionism"),
(8, "Mrs. George Swinton (Elizabeth Ebsworth)", "swinton_sargent.png", "Mrs. George Swinton epitomizes the painterly virtuosity that made John Singer Sargent one of the most fashionable portraitists in late-19th-century Europe and America. Extravagant color and brushwork were central to Sargent’s success, as was his ability to present a refined and appealing image of his sitter.", 1897, "Oil on canvas", 273, "Impressionism"),
(9, "Water Lilies", "waterLilies_monet.png", "The focal point of these paintings was the artist’s beloved ﬂower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", 1906, "Oil on canvas", 243, "Impressionism"),
(10, "Café Singer", "cafeSinger_degas.png", "Degas was a French artist known for his pastels, paintings, sculptures, prints, and charcoal drawings. This pastel is part of a series of works that have cafe-concert singers as their subject. Degas was a habitué of those places, especially the Cafe des Ambassadeurs, and he uses them as the settings for many of his works.", 1897, "Oil on canvas", 226, "Impressionism"),
INSERT INTO artwork (artist_id, name, image, description, year, medium, location, collection) 
VALUES (11, "A Chemist Lifting with Extreme Precaution the Cuticle of a Grand Piano", "chemist_dali.png", "The painting is an example of Dalí""s distinctive, avant-garde brand of surrealism as well as a curious example of Dalí""s mysterious relationship with Judaism.", 1936, "Oil on canvas", 289, "Modern Art"),
(12, "Exotic Garden", "exoticGarden_seligmann.png", NULL, 1954, "Oil on canvas", 289, "Modern Art"),
(13, "Composition (No. 1) Gray-Red", "composition_mondrian.png", "In 1917 Mondrian joined the De Stijl movement and began to develop a purely visual language of verticals and horizontals, restricting his compositions to predominantly off-white grounds divided by black rectilinear lines that framed smaller blocks of primary colors.", 1935, "Oil on canvas", 289, "Modern Art"),
(14, "Nude under a Pine Tree", "nude_picasso.png", "In Nude under a Pine Tree, Pablo Picasso looked to the long tradition of figurative painting, including the female nudes of Francisco de Goya. In contrast to his predecessors, however, Picasso placed the monumental figure on rocky terrain, rather than on a plush chaise. He also used bold, modernist forms that reference his own earlier artistic styles: the flattened face, segmented legs and torso, and multiple viewpoints recall some of his Cubist works, and the color palette evokes his classical style of the 1920s.", 1959, "Oil on canvas", 394, "Modern Art"),
(14, "Man with a Pipe", "pipe_picasso.png", "This piece has a quiet humor and feeling of composure. The use of Pointillist-style dots, with their stippled effect and the inclusion of a painted marble-effect herald Picasso""s return to color exploration and his interest in the development of interior design processes. The incorporation of frieze-like techniques, with areas of architectural scrolling, creates a sense of movement to oppose the tension of the solid piling up of the angular blocks.", 1915, "Oil on canvas", 391, "Modern Art"),
(15, "The Bedroom", "bedroom_vanGogh.png", " Van Gogh conceived the first Bedroom in October 1888, a month after he moved into his “Yellow House” in Arles, France. This moment marked the first time the artist had a home of his own, and he had immediately and enthusiastically set about decorating, painting a suite of canvases to fill the walls. Completely exhausted from the effort, he spent two-and-a-half days in bed and was then inspired to create a painting of his bedroom.", 1889, "Oil on canvas", 241, "Modern Art"),
(16, "A Sunday on La Grande Jatte", "sunday_seurat.png", "Seurat painted A Sunday on La Grande Jatte—1884 using pointillism, a highly systematic and scientific technique based on the hypothesis that closely positioned points of pure color mix together in the viewer’s eye. He began work on the canvas in 1884 (and included this date in the title) with a layer of small, horizontal brushstrokes in complementary colors. He next added a series of dots that coalesce into solid and luminous forms when seen from a distance.", 1884, "Oil on canvas", 240, "Modern Art"),
(17, "Nighthawks", "nighthawks_hopper.png", "About Nighthawks Edward Hopper recollected, unconsciously, probably, I was painting the loneliness of a large city. In an all-night diner, three customers sit at the counter opposite a server, each appear to be lost in thought and disengaged from one another.", 1942, "Oil on canvas", 262, "Essentials"),
(18, "American Gothic", "agothic_wood.png", "In American Gothic, Grant Wood directly evoked images of an earlier generation by featuring a farmer and his daughter posed stiffly and dressed as if they were, as the artist put it, “tintypes from my old family album.” They stand outside of their home, built in an 1880s style known as Carpenter Gothic. Wood had seen a similar farmhouse during a visit to Eldon, Iowa.", 1930, "Oil on Beaver Board", 263, "Essentials"),
(19, "Saint George and the Dragon", "saintGeorge_martorell.png", "Depicted here is the most frequently represented episode from the popular legend of Saint George, in which the model Christian knight saves a town and rescues a beautiful princess. Conceived in the elegant, decorative International Gothic style, the painting was originally the center of an altarpiece dedicated to Saint George that was apparently made for the chapel of the palace of the Catalan government in Barcelona. ", 1434, "Tempera on panel", 237, "Essentials"),
(20, "Triptych Window", "triptych_wright.png", "This colorful, whimsical triptych window is from the Avery Coonley Playhouse, a small structure that Frank Lloyd Wright designed as an addition to the Coonleys’ suburban Chicago estate, which he had previously completed in 1908. Louis Sullivan’s foremost student, Wright continued his teacher’s search for an indigenous American architecture.", 1912, "Clear and colored leaded glass in oak frames", 262, "Essentials"),
(21, "Into the World There Came a Soul Called Ida", "ida_albright.png", "Holding a mirror, powdering her chest, and surrounded with accoutrements of fashion and beauty, the figure portrayed here does not necessarily inspire thoughts of youth and vibrancy. Rather, as one critic put it when this painting was first exhibited, he saw a “woman with flesh the color of a corpse drowned six weeks.” Ida Rogers herself was 19 years old at the time she posed for the artist. With his hyperbolic version of realism, Ivan Albright laboriously transformed his sitter into a vision of his own making. ", 1929, "Oil on canvas", 262, "Essentials");