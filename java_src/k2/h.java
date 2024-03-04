package k2;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c2.x;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.b0;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
final class h {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final String[] f53429a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    @Nullable
    private static CommentFrame a(int i9, b0 b0Var) {
        int n9 = b0Var.n();
        if (b0Var.n() == 1684108385) {
            b0Var.Q(8);
            String y10 = b0Var.y(n9 - 16);
            return new CommentFrame("und", y10, y10);
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse comment attribute: " + a.a(i9));
        return null;
    }

    @Nullable
    private static ApicFrame b(b0 b0Var) {
        int n9 = b0Var.n();
        if (b0Var.n() == 1684108385) {
            int b10 = a.b(b0Var.n());
            String str = b10 == 13 ? "image/jpeg" : b10 == 14 ? "image/png" : null;
            if (str == null) {
                com.google.android.exoplayer2.util.r.i("MetadataUtil", "Unrecognized cover art flags: " + b10);
                return null;
            }
            b0Var.Q(4);
            int i9 = n9 - 16;
            byte[] bArr = new byte[i9];
            b0Var.j(bArr, 0, i9);
            return new ApicFrame(str, null, 3, bArr);
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry c(b0 b0Var) {
        int e10 = b0Var.e() + b0Var.n();
        int n9 = b0Var.n();
        int i9 = (n9 >> 24) & 255;
        try {
            if (i9 == 169 || i9 == 253) {
                int i10 = 16777215 & n9;
                if (i10 == 6516084) {
                    return a(n9, b0Var);
                }
                if (i10 == 7233901 || i10 == 7631467) {
                    return h(n9, "TIT2", b0Var);
                }
                if (i10 == 6516589 || i10 == 7828084) {
                    return h(n9, "TCOM", b0Var);
                }
                if (i10 == 6578553) {
                    return h(n9, "TDRC", b0Var);
                }
                if (i10 == 4280916) {
                    return h(n9, "TPE1", b0Var);
                }
                if (i10 == 7630703) {
                    return h(n9, "TSSE", b0Var);
                }
                if (i10 == 6384738) {
                    return h(n9, "TALB", b0Var);
                }
                if (i10 == 7108978) {
                    return h(n9, "USLT", b0Var);
                }
                if (i10 == 6776174) {
                    return h(n9, "TCON", b0Var);
                }
                if (i10 == 6779504) {
                    return h(n9, "TIT1", b0Var);
                }
            } else if (n9 == 1735291493) {
                return g(b0Var);
            } else {
                if (n9 == 1684632427) {
                    return d(n9, "TPOS", b0Var);
                }
                if (n9 == 1953655662) {
                    return d(n9, "TRCK", b0Var);
                }
                if (n9 == 1953329263) {
                    return i(n9, "TBPM", b0Var, true, false);
                }
                if (n9 == 1668311404) {
                    return i(n9, "TCMP", b0Var, true, true);
                }
                if (n9 == 1668249202) {
                    return b(b0Var);
                }
                if (n9 == 1631670868) {
                    return h(n9, "TPE2", b0Var);
                }
                if (n9 == 1936682605) {
                    return h(n9, "TSOT", b0Var);
                }
                if (n9 == 1936679276) {
                    return h(n9, "TSO2", b0Var);
                }
                if (n9 == 1936679282) {
                    return h(n9, "TSOA", b0Var);
                }
                if (n9 == 1936679265) {
                    return h(n9, "TSOP", b0Var);
                }
                if (n9 == 1936679791) {
                    return h(n9, "TSOC", b0Var);
                }
                if (n9 == 1920233063) {
                    return i(n9, "ITUNESADVISORY", b0Var, false, false);
                }
                if (n9 == 1885823344) {
                    return i(n9, "ITUNESGAPLESS", b0Var, false, true);
                }
                if (n9 == 1936683886) {
                    return h(n9, "TVSHOWSORT", b0Var);
                }
                if (n9 == 1953919848) {
                    return h(n9, "TVSHOW", b0Var);
                }
                if (n9 == 757935405) {
                    return e(b0Var, e10);
                }
            }
            com.google.android.exoplayer2.util.r.b("MetadataUtil", "Skipped unknown metadata entry: " + a.a(n9));
            return null;
        } finally {
            b0Var.P(e10);
        }
    }

    @Nullable
    private static TextInformationFrame d(int i9, String str, b0 b0Var) {
        int n9 = b0Var.n();
        if (b0Var.n() == 1684108385 && n9 >= 22) {
            b0Var.Q(10);
            int J = b0Var.J();
            if (J > 0) {
                String str2 = "" + J;
                int J2 = b0Var.J();
                if (J2 > 0) {
                    str2 = str2 + FileUtils.RES_PREFIX_STORAGE + J2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse index/count attribute: " + a.a(i9));
        return null;
    }

    @Nullable
    private static Id3Frame e(b0 b0Var, int i9) {
        String str = null;
        String str2 = null;
        int i10 = -1;
        int i11 = -1;
        while (b0Var.e() < i9) {
            int e10 = b0Var.e();
            int n9 = b0Var.n();
            int n10 = b0Var.n();
            b0Var.Q(4);
            if (n10 == 1835360622) {
                str = b0Var.y(n9 - 12);
            } else if (n10 == 1851878757) {
                str2 = b0Var.y(n9 - 12);
            } else {
                if (n10 == 1684108385) {
                    i10 = e10;
                    i11 = n9;
                }
                b0Var.Q(n9 - 12);
            }
        }
        if (str == null || str2 == null || i10 == -1) {
            return null;
        }
        b0Var.P(i10);
        b0Var.Q(16);
        return new InternalFrame(str, str2, b0Var.y(i11 - 16));
    }

    @Nullable
    public static MdtaMetadataEntry f(b0 b0Var, int i9, String str) {
        while (true) {
            int e10 = b0Var.e();
            if (e10 >= i9) {
                return null;
            }
            int n9 = b0Var.n();
            if (b0Var.n() == 1684108385) {
                int n10 = b0Var.n();
                int n11 = b0Var.n();
                int i10 = n9 - 16;
                byte[] bArr = new byte[i10];
                b0Var.j(bArr, 0, i10);
                return new MdtaMetadataEntry(str, bArr, n11, n10);
            }
            b0Var.P(e10 + n9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.metadata.id3.TextInformationFrame g(com.google.android.exoplayer2.util.b0 r3) {
        /*
            int r3 = j(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = k2.h.f53429a
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.r.i(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.h.g(com.google.android.exoplayer2.util.b0):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    @Nullable
    private static TextInformationFrame h(int i9, String str, b0 b0Var) {
        int n9 = b0Var.n();
        if (b0Var.n() == 1684108385) {
            b0Var.Q(8);
            return new TextInformationFrame(str, null, b0Var.y(n9 - 16));
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse text attribute: " + a.a(i9));
        return null;
    }

    @Nullable
    private static Id3Frame i(int i9, String str, b0 b0Var, boolean z10, boolean z11) {
        int j10 = j(b0Var);
        if (z11) {
            j10 = Math.min(1, j10);
        }
        if (j10 >= 0) {
            if (z10) {
                return new TextInformationFrame(str, null, Integer.toString(j10));
            }
            return new CommentFrame("und", str, Integer.toString(j10));
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse uint8 attribute: " + a.a(i9));
        return null;
    }

    private static int j(b0 b0Var) {
        b0Var.Q(4);
        if (b0Var.n() == 1684108385) {
            b0Var.Q(8);
            return b0Var.D();
        }
        com.google.android.exoplayer2.util.r.i("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i9, x xVar, k1.b bVar) {
        if (i9 == 1 && xVar.a()) {
            bVar.N(xVar.f1571a).O(xVar.f1572b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r6 != null) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void l(int r5, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r6, @androidx.annotation.Nullable com.google.android.exoplayer2.metadata.Metadata r7, com.google.android.exoplayer2.k1.b r8, com.google.android.exoplayer2.metadata.Metadata... r9) {
        /*
            com.google.android.exoplayer2.metadata.Metadata r0 = new com.google.android.exoplayer2.metadata.Metadata
            r1 = 0
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r2 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = 0
        L14:
            int r6 = r7.d()
            if (r5 >= r6) goto L3c
            com.google.android.exoplayer2.metadata.Metadata$Entry r6 = r7.c(r5)
            boolean r3 = r6 instanceof com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry r6 = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) r6
            java.lang.String r3 = r6.key
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.Metadata r5 = new com.google.android.exoplayer2.metadata.Metadata
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.google.android.exoplayer2.metadata.Metadata r6 = r6.b(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.d()
            if (r5 <= 0) goto L52
            r8.X(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.h.l(int, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.k1$b, com.google.android.exoplayer2.metadata.Metadata[]):void");
    }
}
