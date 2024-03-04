package androidx.renderscript;

import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class ScriptIntrinsicBLAS extends ScriptIntrinsic {
    public static final int CONJ_TRANSPOSE = 113;
    private static final int INTRINSIC_API_LEVEL = 23;
    public static final int LEFT = 141;
    public static final int LOWER = 122;
    public static final int NON_UNIT = 131;
    public static final int NO_TRANSPOSE = 111;
    public static final int RIGHT = 142;
    private static final int RsBlas_bnnm = 1000;
    private static final int RsBlas_caxpy = 29;
    private static final int RsBlas_ccopy = 28;
    private static final int RsBlas_cdotc_sub = 6;
    private static final int RsBlas_cdotu_sub = 5;
    private static final int RsBlas_cgbmv = 64;
    private static final int RsBlas_cgemm = 125;
    private static final int RsBlas_cgemv = 63;
    private static final int RsBlas_cgerc = 99;
    private static final int RsBlas_cgeru = 98;
    private static final int RsBlas_chbmv = 96;
    private static final int RsBlas_chemm = 137;
    private static final int RsBlas_chemv = 95;
    private static final int RsBlas_cher = 100;
    private static final int RsBlas_cher2 = 102;
    private static final int RsBlas_cher2k = 139;
    private static final int RsBlas_cherk = 138;
    private static final int RsBlas_chpmv = 97;
    private static final int RsBlas_chpr = 101;
    private static final int RsBlas_chpr2 = 103;
    private static final int RsBlas_cscal = 43;
    private static final int RsBlas_csscal = 45;
    private static final int RsBlas_cswap = 27;
    private static final int RsBlas_csymm = 126;
    private static final int RsBlas_csyr2k = 128;
    private static final int RsBlas_csyrk = 127;
    private static final int RsBlas_ctbmv = 66;
    private static final int RsBlas_ctbsv = 69;
    private static final int RsBlas_ctpmv = 67;
    private static final int RsBlas_ctpsv = 70;
    private static final int RsBlas_ctrmm = 129;
    private static final int RsBlas_ctrmv = 65;
    private static final int RsBlas_ctrsm = 130;
    private static final int RsBlas_ctrsv = 68;
    private static final int RsBlas_dasum = 12;
    private static final int RsBlas_daxpy = 26;
    private static final int RsBlas_dcopy = 25;
    private static final int RsBlas_ddot = 4;
    private static final int RsBlas_dgbmv = 56;
    private static final int RsBlas_dgemm = 119;
    private static final int RsBlas_dgemv = 55;
    private static final int RsBlas_dger = 90;
    private static final int RsBlas_dnrm2 = 11;
    private static final int RsBlas_drot = 39;
    private static final int RsBlas_drotg = 37;
    private static final int RsBlas_drotm = 40;
    private static final int RsBlas_drotmg = 38;
    private static final int RsBlas_dsbmv = 88;
    private static final int RsBlas_dscal = 42;
    private static final int RsBlas_dsdot = 2;
    private static final int RsBlas_dspmv = 89;
    private static final int RsBlas_dspr = 92;
    private static final int RsBlas_dspr2 = 94;
    private static final int RsBlas_dswap = 24;
    private static final int RsBlas_dsymm = 120;
    private static final int RsBlas_dsymv = 87;
    private static final int RsBlas_dsyr = 91;
    private static final int RsBlas_dsyr2 = 93;
    private static final int RsBlas_dsyr2k = 122;
    private static final int RsBlas_dsyrk = 121;
    private static final int RsBlas_dtbmv = 58;
    private static final int RsBlas_dtbsv = 61;
    private static final int RsBlas_dtpmv = 59;
    private static final int RsBlas_dtpsv = 62;
    private static final int RsBlas_dtrmm = 123;
    private static final int RsBlas_dtrmv = 57;
    private static final int RsBlas_dtrsm = 124;
    private static final int RsBlas_dtrsv = 60;
    private static final int RsBlas_dzasum = 16;
    private static final int RsBlas_dznrm2 = 15;
    private static final int RsBlas_icamax = 19;
    private static final int RsBlas_idamax = 18;
    private static final int RsBlas_isamax = 17;
    private static final int RsBlas_izamax = 20;
    private static final int RsBlas_sasum = 10;
    private static final int RsBlas_saxpy = 23;
    private static final int RsBlas_scasum = 14;
    private static final int RsBlas_scnrm2 = 13;
    private static final int RsBlas_scopy = 22;
    private static final int RsBlas_sdot = 3;
    private static final int RsBlas_sdsdot = 1;
    private static final int RsBlas_sgbmv = 48;
    private static final int RsBlas_sgemm = 113;
    private static final int RsBlas_sgemv = 47;
    private static final int RsBlas_sger = 82;
    private static final int RsBlas_snrm2 = 9;
    private static final int RsBlas_srot = 35;
    private static final int RsBlas_srotg = 33;
    private static final int RsBlas_srotm = 36;
    private static final int RsBlas_srotmg = 34;
    private static final int RsBlas_ssbmv = 80;
    private static final int RsBlas_sscal = 41;
    private static final int RsBlas_sspmv = 81;
    private static final int RsBlas_sspr = 84;
    private static final int RsBlas_sspr2 = 86;
    private static final int RsBlas_sswap = 21;
    private static final int RsBlas_ssymm = 114;
    private static final int RsBlas_ssymv = 79;
    private static final int RsBlas_ssyr = 83;
    private static final int RsBlas_ssyr2 = 85;
    private static final int RsBlas_ssyr2k = 116;
    private static final int RsBlas_ssyrk = 115;
    private static final int RsBlas_stbmv = 50;
    private static final int RsBlas_stbsv = 53;
    private static final int RsBlas_stpmv = 51;
    private static final int RsBlas_stpsv = 54;
    private static final int RsBlas_strmm = 117;
    private static final int RsBlas_strmv = 49;
    private static final int RsBlas_strsm = 118;
    private static final int RsBlas_strsv = 52;
    private static final int RsBlas_zaxpy = 32;
    private static final int RsBlas_zcopy = 31;
    private static final int RsBlas_zdotc_sub = 8;
    private static final int RsBlas_zdotu_sub = 7;
    private static final int RsBlas_zdscal = 46;
    private static final int RsBlas_zgbmv = 72;
    private static final int RsBlas_zgemm = 131;
    private static final int RsBlas_zgemv = 71;
    private static final int RsBlas_zgerc = 108;
    private static final int RsBlas_zgeru = 107;
    private static final int RsBlas_zhbmv = 105;
    private static final int RsBlas_zhemm = 140;
    private static final int RsBlas_zhemv = 104;
    private static final int RsBlas_zher = 109;
    private static final int RsBlas_zher2 = 111;
    private static final int RsBlas_zher2k = 142;
    private static final int RsBlas_zherk = 141;
    private static final int RsBlas_zhpmv = 106;
    private static final int RsBlas_zhpr = 110;
    private static final int RsBlas_zhpr2 = 112;
    private static final int RsBlas_zscal = 44;
    private static final int RsBlas_zswap = 30;
    private static final int RsBlas_zsymm = 132;
    private static final int RsBlas_zsyr2k = 134;
    private static final int RsBlas_zsyrk = 133;
    private static final int RsBlas_ztbmv = 74;
    private static final int RsBlas_ztbsv = 77;
    private static final int RsBlas_ztpmv = 75;
    private static final int RsBlas_ztpsv = 78;
    private static final int RsBlas_ztrmm = 135;
    private static final int RsBlas_ztrmv = 73;
    private static final int RsBlas_ztrsm = 136;
    private static final int RsBlas_ztrsv = 76;
    public static final int TRANSPOSE = 112;
    public static final int UNIT = 132;
    public static final int UPPER = 121;
    private Allocation mLUT;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Diag {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Side {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Transpose {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Uplo {
    }

    private ScriptIntrinsicBLAS(long j10, RenderScript renderScript) {
        super(j10, renderScript);
    }

    public static ScriptIntrinsicBLAS create(RenderScript renderScript) {
        boolean z10 = renderScript.isUseNative() && Build.VERSION.SDK_INT < 23;
        ScriptIntrinsicBLAS scriptIntrinsicBLAS = new ScriptIntrinsicBLAS(renderScript.nScriptIntrinsicCreate(13, Element.U32(renderScript).getID(renderScript), z10), renderScript);
        scriptIntrinsicBLAS.setIncSupp(z10);
        return scriptIntrinsicBLAS;
    }

    static void validateConjTranspose(int i9) {
        if (i9 != 111 && i9 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    static void validateDiag(int i9) {
        if (i9 != 131 && i9 != 132) {
            throw new RSRuntimeException("Invalid diag passed to BLAS");
        }
    }

    static void validateGEMV(Element element, int i9, Allocation allocation, Allocation allocation2, int i10, Allocation allocation3, int i11) {
        int i12;
        int i13;
        validateTranspose(i9);
        int y10 = allocation.getType().getY();
        int x10 = allocation.getType().getX();
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() > 1 || allocation3.getType().getY() > 1) {
                throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
            }
            if (i10 > 0 && i11 > 0) {
                if (i9 == 111) {
                    i13 = ((x10 - 1) * i10) + 1;
                    i12 = ((y10 - 1) * i11) + 1;
                } else {
                    int i14 = ((y10 - 1) * i10) + 1;
                    i12 = ((x10 - 1) * i11) + 1;
                    i13 = i14;
                }
                if (allocation2.getType().getX() != i13 || allocation3.getType().getX() != i12) {
                    throw new RSRuntimeException("Incorrect vector dimensions for GEMV");
                }
                return;
            }
            throw new RSRuntimeException("Vector increments must be greater than 0");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateGER(Element element, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int y10 = allocation3.getType().getY();
                int x10 = allocation3.getType().getX();
                if (x10 < 1 || y10 < 1) {
                    throw new RSRuntimeException("M and N must be 1 or greater for GER");
                }
                if (i9 > 0 && i10 > 0) {
                    if (allocation.getType().getX() == ((y10 - 1) * i9) + 1) {
                        if (allocation2.getType().getX() != ((x10 - 1) * i10) + 1) {
                            throw new RSRuntimeException("Incorrect vector dimensions for GER");
                        }
                        return;
                    }
                    throw new RSRuntimeException("Incorrect vector dimensions for GER");
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateGERU(Element element, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int y10 = allocation3.getType().getY();
                int x10 = allocation3.getType().getX();
                if (i9 > 0 && i10 > 0) {
                    if (allocation.getType().getX() == ((y10 - 1) * i9) + 1) {
                        if (allocation2.getType().getX() != ((x10 - 1) * i10) + 1) {
                            throw new RSRuntimeException("Incorrect vector dimensions for GERU");
                        }
                        return;
                    }
                    throw new RSRuntimeException("Incorrect vector dimensions for GERU");
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHEMM(Element element, int i9, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        validateSide(i9);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            int x10 = allocation.getType().getX();
            if (x10 == allocation.getType().getY()) {
                if ((i9 == 141 && x10 != allocation2.getType().getY()) || (i9 == 142 && x10 != allocation2.getType().getX())) {
                    throw new RSRuntimeException("Called HEMM with invalid B");
                }
                if (allocation2.getType().getX() != allocation3.getType().getX() || allocation2.getType().getY() != allocation3.getType().getY()) {
                    throw new RSRuntimeException("Called HEMM with mismatched B and C");
                }
                return;
            }
            throw new RSRuntimeException("Called HEMM with non-square A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHER2K(Element element, int i9, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            validateConjTranspose(i9);
            int x10 = allocation3.getType().getX();
            if (x10 == allocation3.getType().getY()) {
                if (i9 == 111) {
                    if (allocation.getType().getY() != x10) {
                        throw new RSRuntimeException("Called HER2K with invalid matrices");
                    }
                } else if (allocation.getType().getX() != x10) {
                    throw new RSRuntimeException("Called HER2K with invalid matrices");
                }
                if (allocation.getType().getX() != allocation2.getType().getX() || allocation.getType().getY() != allocation2.getType().getY()) {
                    throw new RSRuntimeException("Called HER2K with invalid A and B matrices");
                }
                return;
            }
            throw new RSRuntimeException("Called HER2K with non-square C");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateHERK(Element element, int i9, Allocation allocation, Allocation allocation2) {
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            validateConjTranspose(i9);
            int x10 = allocation2.getType().getX();
            if (x10 != allocation2.getType().getY()) {
                throw new RSRuntimeException("Called HERK with non-square C");
            }
            if (i9 == 111) {
                if (x10 != allocation.getType().getY()) {
                    throw new RSRuntimeException("Called HERK with invalid A");
                }
                return;
            } else if (x10 != allocation.getType().getX()) {
                throw new RSRuntimeException("Called HERK with invalid A");
            } else {
                return;
            }
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateL3(Element element, int i9, int i10, int i11, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        if ((allocation != null && !allocation.getType().getElement().isCompatible(element)) || ((allocation2 != null && !allocation2.getType().getElement().isCompatible(element)) || (allocation3 != null && !allocation3.getType().getElement().isCompatible(element)))) {
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        if (allocation3 != null) {
            int y10 = allocation3.getType().getY();
            int x10 = allocation3.getType().getX();
            int i18 = -1;
            if (i11 != 142) {
                if (allocation == null) {
                    i12 = -1;
                    i13 = -1;
                } else if (i9 != 112 && i9 != 113) {
                    i12 = allocation.getType().getY();
                    i13 = allocation.getType().getX();
                } else {
                    i13 = allocation.getType().getY();
                    i12 = allocation.getType().getX();
                }
                if (allocation2 == null) {
                    i14 = i12;
                    i18 = i13;
                    i15 = -1;
                    i16 = -1;
                } else if (i10 != 112 && i10 != 113) {
                    int y11 = allocation2.getType().getY();
                    i16 = allocation2.getType().getX();
                    i14 = i12;
                    i15 = y11;
                    i18 = i13;
                } else {
                    int y12 = allocation2.getType().getY();
                    i16 = y12;
                    i18 = i13;
                    i14 = i12;
                    i15 = allocation2.getType().getX();
                }
            } else if ((allocation == null && allocation2 != null) || (allocation != null && allocation2 == null)) {
                throw new RSRuntimeException("Provided Matrix A without Matrix B, or vice versa");
            } else {
                if (allocation2 != null) {
                    i15 = allocation.getType().getY();
                    i17 = allocation.getType().getX();
                } else {
                    i15 = -1;
                    i17 = -1;
                }
                if (allocation != null) {
                    int y13 = allocation2.getType().getY();
                    i16 = i17;
                    i14 = y13;
                    i18 = allocation2.getType().getX();
                } else {
                    i16 = i17;
                    i14 = -1;
                }
            }
            if (allocation != null && allocation2 != null) {
                if (i18 != i15 || i14 != y10 || i16 != x10) {
                    throw new RSRuntimeException("Called BLAS with invalid dimensions");
                }
                return;
            } else if (allocation != null) {
                if (y10 != x10) {
                    throw new RSRuntimeException("Matrix C is not symmetric");
                }
                if (i14 != y10) {
                    throw new RSRuntimeException("Called BLAS with invalid dimensions");
                }
                return;
            } else if (allocation != null && allocation2 != null && i18 != i15) {
                throw new RSRuntimeException("Called BLAS with invalid dimensions");
            } else {
                return;
            }
        }
        throw new RSRuntimeException("Allocation C cannot be null");
    }

    static int validateSPMV(Element element, int i9, Allocation allocation, Allocation allocation2, int i10, Allocation allocation3, int i11) {
        validateUplo(i9);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() <= 1 && allocation3.getType().getY() <= 1) {
                if (allocation.getType().getY() <= 1) {
                    int sqrt = (int) Math.sqrt(allocation.getType().getX() * 2.0d);
                    if (allocation.getType().getX() == ((sqrt + 1) * sqrt) / 2) {
                        if (i10 > 0 && i11 > 0) {
                            int i12 = sqrt - 1;
                            if (allocation2.getType().getX() == (i10 * i12) + 1) {
                                if (allocation3.getType().getX() == (i12 * i11) + 1) {
                                    return sqrt;
                                }
                                throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPMV");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSPR(Element element, int i9, Allocation allocation, int i10, Allocation allocation2) {
        validateUplo(i9);
        if (allocation2.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1) {
                if (allocation2.getType().getY() <= 1) {
                    int sqrt = (int) Math.sqrt(allocation2.getType().getX() * 2.0d);
                    if (allocation2.getType().getX() == ((sqrt + 1) * sqrt) / 2) {
                        if (i10 > 0) {
                            if (allocation.getType().getX() == ((sqrt - 1) * i10) + 1) {
                                return sqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPR");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSPR2(Element element, int i9, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateUplo(i9);
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                if (allocation3.getType().getY() <= 1) {
                    int sqrt = (int) Math.sqrt(allocation3.getType().getX() * 2.0d);
                    if (allocation3.getType().getX() == ((sqrt + 1) * sqrt) / 2) {
                        if (i10 > 0 && i11 > 0) {
                            int i12 = sqrt - 1;
                            int i13 = (i10 * i12) + 1;
                            int i14 = (i12 * i11) + 1;
                            if (allocation.getType().getX() == i13 && allocation2.getType().getX() == i14) {
                                return sqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for SPR2");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSYMV(Element element, int i9, Allocation allocation, Allocation allocation2, Allocation allocation3, int i10, int i11) {
        validateUplo(i9);
        int y10 = allocation.getType().getY();
        if (allocation.getType().getX() == y10) {
            if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
                if (allocation2.getType().getY() > 1 || allocation3.getType().getY() > 1) {
                    throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
                }
                if (i10 > 0 && i11 > 0) {
                    int i12 = y10 - 1;
                    if (allocation2.getType().getX() == (i10 * i12) + 1) {
                        if (allocation3.getType().getX() == (i12 * i11) + 1) {
                            return y10;
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
                    }
                    throw new RSRuntimeException("Incorrect vector dimensions for SYMV");
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        throw new RSRuntimeException("A must be a square matrix for SYMV");
    }

    static int validateSYR(Element element, int i9, Allocation allocation, int i10, Allocation allocation2) {
        validateUplo(i9);
        if (allocation2.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element)) {
            int x10 = allocation2.getType().getX();
            if (allocation.getType().getY() <= 1) {
                if (x10 == allocation2.getType().getY()) {
                    if (i10 > 0) {
                        if (allocation.getType().getX() == ((x10 - 1) * i10) + 1) {
                            return x10;
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("A must be a symmetric matrix");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static int validateSYR2(Element element, int i9, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        validateUplo(i9);
        if (allocation3.getType().getElement().isCompatible(element) && allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation.getType().getY() <= 1 && allocation2.getType().getY() <= 1) {
                int x10 = allocation3.getType().getX();
                if (x10 == allocation3.getType().getY()) {
                    if (i10 > 0 && i11 > 0) {
                        int i12 = x10 - 1;
                        int i13 = (i10 * i12) + 1;
                        int i14 = (i12 * i11) + 1;
                        if (allocation.getType().getX() == i13 && allocation2.getType().getX() == i14) {
                            return x10;
                        }
                        throw new RSRuntimeException("Incorrect vector dimensions for SYR");
                    }
                    throw new RSRuntimeException("Vector increments must be greater than 0");
                }
                throw new RSRuntimeException("A must be a symmetric matrix");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateSYR2K(Element element, int i9, Allocation allocation, Allocation allocation2, Allocation allocation3) {
        int y10;
        validateTranspose(i9);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element) && allocation3.getType().getElement().isCompatible(element)) {
            if (i9 == 112) {
                y10 = allocation.getType().getX();
            } else {
                y10 = allocation.getType().getY();
            }
            if (allocation3.getType().getX() == y10 && allocation3.getType().getY() == y10) {
                if (allocation.getType().getX() != allocation2.getType().getX() || allocation.getType().getY() != allocation2.getType().getY()) {
                    throw new RSRuntimeException("Invalid A and B in SYR2K");
                }
                return;
            }
            throw new RSRuntimeException("Invalid symmetric matrix in SYR2K");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateSide(int i9) {
        if (i9 != 141 && i9 != 142) {
            throw new RSRuntimeException("Invalid side passed to BLAS");
        }
    }

    static int validateTPMV(Element element, int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTranspose(i10);
        validateUplo(i9);
        validateDiag(i11);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            if (allocation2.getType().getY() <= 1) {
                if (allocation.getType().getY() <= 1) {
                    int sqrt = (int) Math.sqrt(allocation.getType().getX() * 2.0d);
                    if (allocation.getType().getX() == ((sqrt + 1) * sqrt) / 2) {
                        if (i12 > 0) {
                            if (allocation2.getType().getX() == ((sqrt - 1) * i12) + 1) {
                                return sqrt;
                            }
                            throw new RSRuntimeException("Incorrect vector dimensions for TPMV");
                        }
                        throw new RSRuntimeException("Vector increments must be greater than 0");
                    }
                    throw new RSRuntimeException("Invalid dimension for Ap");
                }
                throw new RSRuntimeException("Ap must have a Y dimension of 0 or 1");
            }
            throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateTRMM(Element element, int i9, int i10, Allocation allocation, Allocation allocation2) {
        validateSide(i9);
        validateTranspose(i10);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            int y10 = allocation.getType().getY();
            int x10 = allocation.getType().getX();
            if (y10 == x10) {
                int y11 = allocation2.getType().getY();
                int x11 = allocation2.getType().getX();
                if (i9 == 141) {
                    if (x10 != y11) {
                        throw new RSRuntimeException("Called TRMM with invalid matrices");
                    }
                    return;
                } else if (x11 != y10) {
                    throw new RSRuntimeException("Called TRMM with invalid matrices");
                } else {
                    return;
                }
            }
            throw new RSRuntimeException("Called TRMM with a non-symmetric matrix A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateTRMV(Element element, int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTranspose(i10);
        validateUplo(i9);
        validateDiag(i11);
        int y10 = allocation.getType().getY();
        if (allocation.getType().getX() == y10) {
            if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
                if (allocation2.getType().getY() > 1) {
                    throw new RSRuntimeException("BLAS vectors must have Y dimension of 0 or 1");
                }
                if (i12 > 0) {
                    if (allocation2.getType().getX() != ((y10 - 1) * i12) + 1) {
                        throw new RSRuntimeException("Incorrect vector dimensions for TRMV");
                    }
                    return;
                }
                throw new RSRuntimeException("Vector increments must be greater than 0");
            }
            throw new RSRuntimeException("Called BLAS with wrong Element type");
        }
        throw new RSRuntimeException("A must be a square matrix for TRMV");
    }

    static void validateTRSM(Element element, int i9, int i10, Allocation allocation, Allocation allocation2) {
        validateSide(i9);
        validateTranspose(i10);
        if (allocation.getType().getElement().isCompatible(element) && allocation2.getType().getElement().isCompatible(element)) {
            int x10 = allocation.getType().getX();
            if (x10 == allocation.getType().getY()) {
                int y10 = allocation2.getType().getY();
                int x11 = allocation2.getType().getX();
                if (i9 == 141) {
                    if (x10 != y10) {
                        throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
                    }
                    return;
                } else if (x10 != x11) {
                    throw new RSRuntimeException("Called TRSM with invalid matrix dimensions");
                } else {
                    return;
                }
            }
            throw new RSRuntimeException("Called TRSM with a non-symmetric matrix A");
        }
        throw new RSRuntimeException("Called BLAS with wrong Element type");
    }

    static void validateTranspose(int i9) {
        if (i9 != 111 && i9 != 112 && i9 != 113) {
            throw new RSRuntimeException("Invalid transpose passed to BLAS");
        }
    }

    static void validateUplo(int i9) {
        if (i9 != 121 && i9 != 122) {
            throw new RSRuntimeException("Invalid uplo passed to BLAS");
        }
    }

    public void BNNM(Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3, int i11, int i12) {
        long j10;
        long j11;
        long j12;
        validateL3(Element.U8(this.mRS), 111, 112, 0, allocation, allocation2, allocation3);
        if (i9 < 0 || i9 > 255) {
            throw new RSRuntimeException("Invalid a_offset passed to BNNM");
        }
        if (i10 >= 0 && i10 <= 255) {
            int y10 = allocation.getType().getY();
            int y11 = allocation2.getType().getY();
            int x10 = allocation.getType().getX();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                long dummyAlloc = getDummyAlloc(allocation);
                long dummyAlloc2 = getDummyAlloc(allocation2);
                j12 = getDummyAlloc(allocation3);
                j11 = dummyAlloc2;
                j10 = dummyAlloc;
            } else {
                j10 = id2;
                j11 = id3;
                j12 = id4;
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_BNNM(getID(renderScript), y10, y11, x10, j10, i9, j11, i10, j12, i11, i12, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Invalid b_offset passed to BNNM");
    }

    public void CGBMV(int i9, int i10, int i11, Float2 float2, Allocation allocation, Allocation allocation2, int i12, Float2 float22, Allocation allocation3, int i13) {
        validateGEMV(Element.F32_2(this.mRS), i9, allocation, allocation2, i12, allocation3, i13);
        if (i10 >= 0 && i11 >= 0) {
            int y10 = allocation.getType().getY();
            int x10 = allocation.getType().getX();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 64, i9, 0, 0, 0, 0, y10, x10, 0, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, i12, i13, i10, i11, isIncSupp);
            return;
        }
        throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
    }

    public void CGEMM(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float22, Allocation allocation3) {
        int y10;
        int x10;
        int x11;
        long j10;
        long j11;
        long j12;
        validateTranspose(i9);
        validateTranspose(i10);
        validateL3(Element.F32_2(this.mRS), i9, i10, 0, allocation, allocation2, allocation3);
        if (i9 != 111) {
            y10 = allocation.getType().getX();
            x10 = allocation.getType().getY();
        } else {
            y10 = allocation.getType().getY();
            x10 = allocation.getType().getX();
        }
        int i11 = y10;
        int i12 = x10;
        if (i10 != 111) {
            x11 = allocation2.getType().getY();
        } else {
            x11 = allocation2.getType().getX();
        }
        int i13 = x11;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j10 = dummyAlloc;
            j11 = getDummyAlloc(allocation2);
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 125, i9, i10, 0, 0, 0, i11, i13, i12, float2.f950x, float2.f951y, j10, j11, float22.f950x, float22.f951y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void CGEMV(int i9, Float2 float2, Allocation allocation, Allocation allocation2, int i10, Float2 float22, Allocation allocation3, int i11) {
        validateGEMV(Element.F32_2(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        int y10 = allocation.getType().getY();
        int x10 = allocation.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 63, i9, 0, 0, 0, 0, y10, x10, 0, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void CGERC(Float2 float2, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i9, allocation2, i10, allocation3);
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 99, 0, 0, 0, 0, 0, y10, x10, 0, float2.f950x, float2.f951y, id3, id4, 0.0f, 0.0f, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void CGERU(Float2 float2, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        validateGERU(Element.F32_2(this.mRS), allocation, i9, allocation2, i10, allocation3);
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 98, 0, 0, 0, 0, 0, y10, x10, 0, float2.f950x, float2.f951y, id3, id4, 0.0f, 0.0f, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void CHBMV(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, int i11, Float2 float22, Allocation allocation3, int i12) {
        int validateSYR2 = validateSYR2(Element.F32_2(this.mRS), i9, allocation2, i11, allocation3, i12, allocation);
        if (i10 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 96, 0, 0, 0, i9, 0, 0, validateSYR2, i10, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, i11, i12, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be 0 or greater for HBMV");
    }

    public void CHEMM(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float22, Allocation allocation3) {
        long j10;
        long j11;
        long j12;
        validateUplo(i10);
        validateHEMM(Element.F32_2(this.mRS), i9, allocation, allocation2, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 137, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f950x, float2.f951y, j10, j11, float22.f950x, float22.f951y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void CHEMV(int i9, Float2 float2, Allocation allocation, Allocation allocation2, int i10, Float2 float22, Allocation allocation3, int i11) {
        int validateSYR2 = validateSYR2(Element.F32_2(this.mRS), i9, allocation2, i10, allocation3, i11, allocation);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 95, 0, 0, 0, i9, 0, 0, validateSYR2, 0, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void CHER(int i9, float f10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSYR = validateSYR(Element.F32_2(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 100, 0, 0, 0, i9, 0, 0, validateSYR, 0, f10, 0.0f, j11, 0L, 0.0f, 0.0f, j10, i10, 0, 0, 0, isIncSupp);
    }

    public void CHER2(int i9, Float2 float2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSYR2 = validateSYR2(Element.F32_2(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 102, 0, 0, 0, i9, 0, 0, validateSYR2, 0, float2.f950x, float2.f951y, id3, id4, 0.0f, 0.0f, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void CHER2K(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, float f10, Allocation allocation3) {
        int y10;
        long j10;
        long j11;
        validateUplo(i9);
        validateHER2K(Element.F32_2(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 == 111) {
            y10 = allocation.getType().getX();
        } else {
            y10 = allocation.getType().getY();
        }
        int i11 = y10;
        boolean isIncSupp = isIncSupp();
        allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            getDummyAlloc(allocation);
            j10 = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 139, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, float2.f950x, float2.f951y, allocation.getID(this.mRS), j10, f10, 0.0f, j11, 0, 0, 0, 0, isIncSupp);
    }

    public void CHERK(int i9, int i10, float f10, Allocation allocation, float f11, Allocation allocation2) {
        int x10;
        long j10;
        long j11;
        validateUplo(i9);
        validateHERK(Element.F32_2(this.mRS), i10, allocation, allocation2);
        if (i10 == 113) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            j10 = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 138, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, f10, 0.0f, j10, 0L, f11, 0.0f, j11, 0, 0, 0, 0, isIncSupp);
    }

    public void CHPMV(int i9, Float2 float2, Allocation allocation, Allocation allocation2, int i10, Float2 float22, Allocation allocation3, int i11) {
        int validateSPR2 = validateSPR2(Element.F32_2(this.mRS), i9, allocation2, i10, allocation3, i11, allocation);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 97, 0, 0, 0, i9, 0, 0, validateSPR2, 0, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void CHPR(int i9, float f10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSPR = validateSPR(Element.F32_2(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 101, 0, 0, 0, i9, 0, 0, validateSPR, 0, f10, 0.0f, j11, 0L, 0.0f, 0.0f, j10, i10, 0, 0, 0, isIncSupp);
    }

    public void CHPR2(int i9, Float2 float2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSPR2 = validateSPR2(Element.F32_2(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 103, 0, 0, 0, i9, 0, 0, validateSPR2, 0, float2.f950x, float2.f951y, id3, id4, 0.0f, 0.0f, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void CSYMM(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float22, Allocation allocation3) {
        validateSide(i9);
        validateUplo(i10);
        if (allocation.getType().getX() == allocation.getType().getY()) {
            validateL3(Element.F32_2(this.mRS), 0, 0, i9, allocation, allocation2, allocation3);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 126, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, float2.f950x, float2.f951y, id2, id3, float22.f950x, float22.f951y, id4, 0, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Matrix A is not symmetric");
    }

    public void CSYR2K(int i9, int i10, Float2 float2, Allocation allocation, Allocation allocation2, Float2 float22, Allocation allocation3) {
        int x10;
        long j10;
        long j11;
        long j12;
        validateUplo(i9);
        validateSYR2K(Element.F32_2(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 128, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, float2.f950x, float2.f951y, j10, j11, float22.f950x, float22.f951y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void CSYRK(int i9, int i10, Float2 float2, Allocation allocation, Float2 float22, Allocation allocation2) {
        int x10;
        validateTranspose(i10);
        validateUplo(i9);
        validateL3(Element.F32_2(this.mRS), i10, 0, 0, allocation, null, allocation2);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 127, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, float2.f950x, float2.f951y, id2, 0L, float22.f950x, float22.f951y, allocation2.getID(this.mRS), 0, 0, 0, 0, isIncSupp);
    }

    public void CTBMV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        if (i12 >= 0) {
            validateTRMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i13);
            int y10 = allocation.getType().getY();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 66, i10, 0, 0, i9, i11, 0, y10, i12, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void CTBSV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i13);
        int y10 = allocation.getType().getY();
        if (i12 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 69, i10, 0, 0, i9, i11, 0, y10, i12, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Number of diagonals must be positive");
    }

    public void CTPMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 67, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void CTPSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 70, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void CTRMM(int i9, int i10, int i11, int i12, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRMM(Element.F32_2(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 129, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f950x, float2.f951y, id2, j10, 0.0f, 0.0f, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void CTRMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 65, i10, 0, 0, i9, i11, 0, y10, 0, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void CTRSM(int i9, int i10, int i11, int i12, Float2 float2, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRSM(Element.F32_2(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 130, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, float2.f950x, float2.f951y, id2, j10, 0.0f, 0.0f, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void CTRSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F32_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Complex(getID(renderScript), 68, i10, 0, 0, i9, i11, 0, y10, 0, 0.0f, 0.0f, id2, id3, 0.0f, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void DGBMV(int i9, int i10, int i11, double d10, Allocation allocation, Allocation allocation2, int i12, double d11, Allocation allocation3, int i13) {
        validateGEMV(Element.F64(this.mRS), i9, allocation, allocation2, i12, allocation3, i13);
        if (i10 >= 0 && i11 >= 0) {
            int y10 = allocation.getType().getY();
            int x10 = allocation.getType().getX();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 56, i9, 0, 0, 0, 0, y10, x10, 0, d10, id2, id3, d11, id4, i12, i13, i10, i11, isIncSupp);
            return;
        }
        throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
    }

    public void DGEMM(int i9, int i10, double d10, Allocation allocation, Allocation allocation2, double d11, Allocation allocation3) {
        int y10;
        int x10;
        int x11;
        long j10;
        long j11;
        long j12;
        validateTranspose(i9);
        validateTranspose(i10);
        validateL3(Element.F64(this.mRS), i9, i10, 0, allocation, allocation2, allocation3);
        if (i9 != 111) {
            y10 = allocation.getType().getX();
            x10 = allocation.getType().getY();
        } else {
            y10 = allocation.getType().getY();
            x10 = allocation.getType().getX();
        }
        int i11 = y10;
        int i12 = x10;
        if (i10 != 111) {
            x11 = allocation2.getType().getY();
        } else {
            x11 = allocation2.getType().getX();
        }
        int i13 = x11;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j10 = dummyAlloc;
            j11 = getDummyAlloc(allocation2);
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 119, i9, i10, 0, 0, 0, i11, i13, i12, d10, j10, j11, d11, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void DGEMV(int i9, double d10, Allocation allocation, Allocation allocation2, int i10, double d11, Allocation allocation3, int i11) {
        validateGEMV(Element.F64(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        int y10 = allocation.getType().getY();
        int x10 = allocation.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 55, i9, 0, 0, 0, 0, y10, x10, 0, d10, id2, id3, d11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void DGER(double d10, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        validateGER(Element.F64(this.mRS), allocation, i9, allocation2, i10, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 90, 0, 0, 0, 0, 0, y10, x10, 0, d10, id3, id4, 0.0d, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void DSBMV(int i9, int i10, double d10, Allocation allocation, Allocation allocation2, int i11, double d11, Allocation allocation3, int i12) {
        if (i10 >= 0) {
            int validateSYMV = validateSYMV(Element.F64(this.mRS), i9, allocation, allocation2, allocation3, i11, i12);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 88, 0, 0, 0, i9, 0, 0, validateSYMV, i10, d10, id2, id3, d11, id4, i11, i12, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void DSPMV(int i9, double d10, Allocation allocation, Allocation allocation2, int i10, double d11, Allocation allocation3, int i11) {
        int validateSPMV = validateSPMV(Element.F64(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 89, 0, 0, 0, i9, 0, 0, validateSPMV, 0, d10, id2, id3, d11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void DSPR(int i9, double d10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSPR = validateSPR(Element.F64(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 92, 0, 0, 0, i9, 0, 0, validateSPR, 0, d10, j11, j10, 0.0d, 0L, i10, 0, 0, 0, isIncSupp);
    }

    public void DSPR2(int i9, double d10, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSPR2 = validateSPR2(Element.F64(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 94, 0, 0, 0, i9, 0, 0, validateSPR2, 0, d10, id3, id4, 0.0d, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void DSYMM(int i9, int i10, double d10, Allocation allocation, Allocation allocation2, double d11, Allocation allocation3) {
        validateSide(i9);
        validateUplo(i10);
        if (allocation.getType().getX() == allocation.getType().getY()) {
            validateL3(Element.F64(this.mRS), 0, 0, i9, allocation, allocation2, allocation3);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 120, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, d10, id2, id3, d11, id4, 0, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Matrix A is not symmetric");
    }

    public void DSYMV(int i9, double d10, Allocation allocation, Allocation allocation2, int i10, double d11, Allocation allocation3, int i11) {
        int validateSYMV = validateSYMV(Element.F64(this.mRS), i9, allocation, allocation2, allocation3, i10, i11);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 87, 0, 0, 0, i9, 0, 0, validateSYMV, 0, d10, id2, id3, d11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void DSYR(int i9, double d10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSYR = validateSYR(Element.F64(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 91, 0, 0, 0, i9, 0, 0, validateSYR, 0, d10, j11, j10, 0.0d, 0L, i10, 0, 0, 0, isIncSupp);
    }

    public void DSYR2(int i9, double d10, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSYR2 = validateSYR2(Element.F64(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 93, 0, 0, 0, i9, 0, 0, validateSYR2, 0, d10, id3, id4, 0.0d, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void DSYR2K(int i9, int i10, double d10, Allocation allocation, Allocation allocation2, double d11, Allocation allocation3) {
        int x10;
        long j10;
        long j11;
        long j12;
        validateUplo(i9);
        validateSYR2K(Element.F64(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 122, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, d10, j10, j11, d11, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void DSYRK(int i9, int i10, double d10, Allocation allocation, double d11, Allocation allocation2) {
        int x10;
        validateTranspose(i10);
        validateUplo(i9);
        validateL3(Element.F64(this.mRS), i10, 0, 0, allocation, null, allocation2);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 121, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, d10, id2, 0L, d11, id3, 0, 0, 0, 0, isIncSupp);
    }

    public void DTBMV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        if (i12 >= 0) {
            validateTRMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i13);
            int y10 = allocation.getType().getY();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 58, i10, 0, 0, i9, i11, 0, y10, i12, 0.0d, id2, id3, 0.0d, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void DTBSV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i13);
        int y10 = allocation.getType().getY();
        if (i12 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 61, i10, 0, 0, i9, i11, 0, y10, i12, 0.0d, id2, id3, 0.0d, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Number of diagonals must be positive");
    }

    public void DTPMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 59, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0d, id2, id3, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void DTPSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 62, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0d, id2, id3, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void DTRMM(int i9, int i10, int i11, int i12, double d10, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRMM(Element.F64(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 123, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, d10, id2, j10, 0.0d, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void DTRMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 57, i10, 0, 0, i9, i11, 0, y10, 0, 0.0d, id2, id3, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void DTRSM(int i9, int i10, int i11, int i12, double d10, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRSM(Element.F64(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 124, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, d10, id2, j10, 0.0d, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void DTRSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F64(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Double(getID(renderScript), 60, i10, 0, 0, i9, i11, 0, y10, 0, 0.0d, id2, id3, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void SGBMV(int i9, int i10, int i11, float f10, Allocation allocation, Allocation allocation2, int i12, float f11, Allocation allocation3, int i13) {
        validateGEMV(Element.F32(this.mRS), i9, allocation, allocation2, i12, allocation3, i13);
        if (i10 >= 0 && i11 >= 0) {
            int y10 = allocation.getType().getY();
            int x10 = allocation.getType().getX();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 48, i9, 0, 0, 0, 0, y10, x10, 0, f10, id2, id3, f11, id4, i12, i13, i10, i11, isIncSupp);
            return;
        }
        throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
    }

    public void SGEMM(int i9, int i10, float f10, Allocation allocation, Allocation allocation2, float f11, Allocation allocation3) {
        int y10;
        int x10;
        int x11;
        long j10;
        long j11;
        long j12;
        validateTranspose(i9);
        validateTranspose(i10);
        validateL3(Element.F32(this.mRS), i9, i10, 0, allocation, allocation2, allocation3);
        if (i9 != 111) {
            y10 = allocation.getType().getX();
            x10 = allocation.getType().getY();
        } else {
            y10 = allocation.getType().getY();
            x10 = allocation.getType().getX();
        }
        int i11 = y10;
        int i12 = x10;
        if (i10 != 111) {
            x11 = allocation2.getType().getY();
        } else {
            x11 = allocation2.getType().getX();
        }
        int i13 = x11;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j12 = dummyAlloc;
            j10 = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation3);
        } else {
            j10 = id3;
            j11 = id4;
            j12 = id2;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 113, i9, i10, 0, 0, 0, i11, i13, i12, f10, j12, j10, f11, j11, 0, 0, 0, 0, isIncSupp);
    }

    public void SGEMV(int i9, float f10, Allocation allocation, Allocation allocation2, int i10, float f11, Allocation allocation3, int i11) {
        validateGEMV(Element.F32(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        int y10 = allocation.getType().getY();
        int x10 = allocation.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 47, i9, 0, 0, 0, 0, y10, x10, 0, f10, id2, id3, f11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void SGER(float f10, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        validateGER(Element.F32(this.mRS), allocation, i9, allocation2, i10, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 82, 0, 0, 0, 0, 0, y10, x10, 0, f10, id3, id4, 0.0f, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void SSBMV(int i9, int i10, float f10, Allocation allocation, Allocation allocation2, int i11, float f11, Allocation allocation3, int i12) {
        if (i10 >= 0) {
            int validateSYMV = validateSYMV(Element.F32(this.mRS), i9, allocation, allocation2, allocation3, i11, i12);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 80, 0, 0, 0, i9, 0, 0, validateSYMV, i10, f10, id2, id3, f11, id4, i11, i12, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void SSPMV(int i9, float f10, Allocation allocation, Allocation allocation2, int i10, float f11, Allocation allocation3, int i11) {
        int validateSPMV = validateSPMV(Element.F32(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 81, 0, 0, 0, i9, 0, 0, validateSPMV, 0, f10, id2, id3, f11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void SSPR(int i9, float f10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSPR = validateSPR(Element.F32(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 84, 0, 0, 0, i9, 0, 0, validateSPR, 0, f10, j11, j10, 0.0f, 0L, i10, 0, 0, 0, isIncSupp);
    }

    public void SSPR2(int i9, float f10, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSPR2 = validateSPR2(Element.F32(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 86, 0, 0, 0, i9, 0, 0, validateSPR2, 0, f10, id3, id4, 0.0f, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void SSYMM(int i9, int i10, float f10, Allocation allocation, Allocation allocation2, float f11, Allocation allocation3) {
        validateSide(i9);
        validateUplo(i10);
        if (allocation.getType().getX() == allocation.getType().getY()) {
            validateL3(Element.F32(this.mRS), 0, 0, i9, allocation, allocation2, allocation3);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 114, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, f10, id2, id3, f11, id4, 0, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Matrix A is not symmetric");
    }

    public void SSYMV(int i9, float f10, Allocation allocation, Allocation allocation2, int i10, float f11, Allocation allocation3, int i11) {
        int validateSYMV = validateSYMV(Element.F32(this.mRS), i9, allocation, allocation2, allocation3, i10, i11);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 79, 0, 0, 0, i9, 0, 0, validateSYMV, 0, f10, id2, id3, f11, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void SSYR(int i9, float f10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSYR = validateSYR(Element.F32(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 83, 0, 0, 0, i9, 0, 0, validateSYR, 0, f10, j11, j10, 0.0f, 0L, i10, 0, 0, 0, isIncSupp);
    }

    public void SSYR2(int i9, float f10, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSYR2 = validateSYR2(Element.F32(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 85, 0, 0, 0, i9, 0, 0, validateSYR2, 0, f10, id3, id4, 0.0f, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void SSYR2K(int i9, int i10, float f10, Allocation allocation, Allocation allocation2, float f11, Allocation allocation3) {
        int x10;
        long j10;
        long j11;
        long j12;
        validateUplo(i9);
        validateSYR2K(Element.F32(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 116, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, f10, j10, j11, f11, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void SSYRK(int i9, int i10, float f10, Allocation allocation, float f11, Allocation allocation2) {
        int x10;
        validateTranspose(i10);
        validateUplo(i9);
        validateL3(Element.F32(this.mRS), i10, 0, 0, allocation, null, allocation2);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 115, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, f10, id2, 0L, f11, id3, 0, 0, 0, 0, isIncSupp);
    }

    public void STBMV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        if (i12 >= 0) {
            validateTRMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i13);
            int y10 = allocation.getType().getY();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 50, i10, 0, 0, i9, i11, 0, y10, i12, 0.0f, id2, id3, 0.0f, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void STBSV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i13);
        int y10 = allocation.getType().getY();
        if (i12 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 53, i10, 0, 0, i9, i11, 0, y10, i12, 0.0f, id2, id3, 0.0f, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Number of diagonals must be positive");
    }

    public void STPMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 51, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0f, id2, id3, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void STPSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 54, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0f, id2, id3, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void STRMM(int i9, int i10, int i11, int i12, float f10, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRMM(Element.F32(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 117, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, f10, id2, j10, 0.0f, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void STRMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 49, i10, 0, 0, i9, i11, 0, y10, 0, 0.0f, id2, id3, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void STRSM(int i9, int i10, int i11, int i12, float f10, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRSM(Element.F32(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 118, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, f10, id2, j10, 0.0f, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void STRSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F32(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Single(getID(renderScript), 52, i10, 0, 0, i9, i11, 0, y10, 0, 0.0f, id2, id3, 0.0f, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void ZGBMV(int i9, int i10, int i11, Double2 double2, Allocation allocation, Allocation allocation2, int i12, Double2 double22, Allocation allocation3, int i13) {
        validateGEMV(Element.F64_2(this.mRS), i9, allocation, allocation2, i12, allocation3, i13);
        if (i10 >= 0 && i11 >= 0) {
            int y10 = allocation.getType().getY();
            int x10 = allocation.getType().getX();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 72, i9, 0, 0, 0, 0, y10, x10, 0, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, i12, i13, i10, i11, isIncSupp);
            return;
        }
        throw new RSRuntimeException("KL and KU must be greater than or equal to 0");
    }

    public void ZGEMM(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double22, Allocation allocation3) {
        int y10;
        int x10;
        int x11;
        long j10;
        long j11;
        long j12;
        validateTranspose(i9);
        validateTranspose(i10);
        validateL3(Element.F64_2(this.mRS), i9, i10, 0, allocation, allocation2, allocation3);
        if (i9 != 111) {
            y10 = allocation.getType().getX();
            x10 = allocation.getType().getY();
        } else {
            y10 = allocation.getType().getY();
            x10 = allocation.getType().getX();
        }
        int i11 = y10;
        int i12 = x10;
        if (i10 != 111) {
            x11 = allocation2.getType().getY();
        } else {
            x11 = allocation2.getType().getX();
        }
        int i13 = x11;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j10 = dummyAlloc;
            j11 = getDummyAlloc(allocation2);
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 131, i9, i10, 0, 0, 0, i11, i13, i12, double2.f941x, double2.f942y, j10, j11, double22.f941x, double22.f942y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void ZGEMV(int i9, Double2 double2, Allocation allocation, Allocation allocation2, int i10, Double2 double22, Allocation allocation3, int i11) {
        validateGEMV(Element.F64_2(this.mRS), i9, allocation, allocation2, i10, allocation3, i11);
        int y10 = allocation.getType().getY();
        int x10 = allocation.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 71, i9, 0, 0, 0, 0, y10, x10, 0, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void ZGERC(Double2 double2, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i9, allocation2, i10, allocation3);
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 108, 0, 0, 0, 0, 0, y10, x10, 0, double2.f941x, double2.f942y, id3, id4, 0.0d, 0.0d, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void ZGERU(Double2 double2, Allocation allocation, int i9, Allocation allocation2, int i10, Allocation allocation3) {
        validateGERU(Element.F64_2(this.mRS), allocation, i9, allocation2, i10, allocation3);
        int y10 = allocation3.getType().getY();
        int x10 = allocation3.getType().getX();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 107, 0, 0, 0, 0, 0, y10, x10, 0, double2.f941x, double2.f942y, id3, id4, 0.0d, 0.0d, j10, i9, i10, 0, 0, isIncSupp);
    }

    public void ZHBMV(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, int i11, Double2 double22, Allocation allocation3, int i12) {
        int validateSYR2 = validateSYR2(Element.F64_2(this.mRS), i9, allocation2, i11, allocation3, i12, allocation);
        if (i10 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 105, 0, 0, 0, i9, 0, 0, validateSYR2, i10, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, i11, i12, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be 0 or greater for HBMV");
    }

    public void ZHEMM(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double22, Allocation allocation3) {
        long j10;
        long j11;
        long j12;
        validateUplo(i10);
        validateHEMM(Element.F64_2(this.mRS), i9, allocation, allocation2, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 140, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f941x, double2.f942y, j10, j11, double22.f941x, double22.f942y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void ZHEMV(int i9, Double2 double2, Allocation allocation, Allocation allocation2, int i10, Double2 double22, Allocation allocation3, int i11) {
        int validateSYR2 = validateSYR2(Element.F64_2(this.mRS), i9, allocation2, i10, allocation3, i11, allocation);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 104, 0, 0, 0, i9, 0, 0, validateSYR2, 0, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void ZHER(int i9, double d10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSYR = validateSYR(Element.F64_2(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 109, 0, 0, 0, i9, 0, 0, validateSYR, 0, d10, 0.0d, j11, 0L, 0.0d, 0.0d, j10, i10, 0, 0, 0, isIncSupp);
    }

    public void ZHER2(int i9, Double2 double2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSYR2 = validateSYR2(Element.F64_2(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 111, 0, 0, 0, i9, 0, 0, validateSYR2, 0, double2.f941x, double2.f942y, id3, id4, 0.0d, 0.0d, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void ZHER2K(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, double d10, Allocation allocation3) {
        int y10;
        long j10;
        long j11;
        validateUplo(i9);
        validateHER2K(Element.F64_2(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 == 111) {
            y10 = allocation.getType().getX();
        } else {
            y10 = allocation.getType().getY();
        }
        int i11 = y10;
        boolean isIncSupp = isIncSupp();
        allocation.getID(this.mRS);
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            getDummyAlloc(allocation);
            j10 = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 142, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, double2.f941x, double2.f942y, allocation.getID(this.mRS), j10, d10, 0.0d, j11, 0, 0, 0, 0, isIncSupp);
    }

    public void ZHERK(int i9, int i10, double d10, Allocation allocation, double d11, Allocation allocation2) {
        int x10;
        long j10;
        long j11;
        validateUplo(i9);
        validateHERK(Element.F64_2(this.mRS), i10, allocation, allocation2);
        if (i10 == 113) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            j10 = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 141, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, d10, 0.0d, j10, 0L, d11, 0.0d, j11, 0, 0, 0, 0, isIncSupp);
    }

    public void ZHPMV(int i9, Double2 double2, Allocation allocation, Allocation allocation2, int i10, Double2 double22, Allocation allocation3, int i11) {
        int validateSPR2 = validateSPR2(Element.F64_2(this.mRS), i9, allocation2, i10, allocation3, i11, allocation);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
            id4 = getDummyAlloc(allocation3);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 106, 0, 0, 0, i9, 0, 0, validateSPR2, 0, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, i10, i11, 0, 0, isIncSupp);
    }

    public void ZHPR(int i9, double d10, Allocation allocation, int i10, Allocation allocation2) {
        long j10;
        long j11;
        int validateSPR = validateSPR(Element.F64_2(this.mRS), i9, allocation, i10, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation2.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation2);
            j11 = getDummyAlloc(allocation);
            j10 = dummyAlloc;
        } else {
            j10 = id2;
            j11 = id3;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 110, 0, 0, 0, i9, 0, 0, validateSPR, 0, d10, 0.0d, j11, 0L, 0.0d, 0.0d, j10, i10, 0, 0, 0, isIncSupp);
    }

    public void ZHPR2(int i9, Double2 double2, Allocation allocation, int i10, Allocation allocation2, int i11, Allocation allocation3) {
        int validateSPR2 = validateSPR2(Element.F64_2(this.mRS), i9, allocation, i10, allocation2, i11, allocation3);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation3.getID(this.mRS);
        long id3 = allocation.getID(this.mRS);
        long id4 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation3);
            id3 = getDummyAlloc(allocation);
            id4 = getDummyAlloc(allocation2);
        }
        long j10 = id2;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 112, 0, 0, 0, i9, 0, 0, validateSPR2, 0, double2.f941x, double2.f942y, id3, id4, 0.0d, 0.0d, j10, i10, i11, 0, 0, isIncSupp);
    }

    public void ZSYMM(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double22, Allocation allocation3) {
        validateSide(i9);
        validateUplo(i10);
        if (allocation.getType().getX() == allocation.getType().getY()) {
            validateL3(Element.F64_2(this.mRS), 0, 0, i9, allocation, allocation2, allocation3);
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            long id4 = allocation3.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
                id4 = getDummyAlloc(allocation3);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 132, 0, 0, i9, i10, 0, allocation3.getType().getY(), allocation3.getType().getX(), 0, double2.f941x, double2.f942y, id2, id3, double22.f941x, double22.f942y, id4, 0, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Matrix A is not symmetric");
    }

    public void ZSYR2K(int i9, int i10, Double2 double2, Allocation allocation, Allocation allocation2, Double2 double22, Allocation allocation3) {
        int x10;
        long j10;
        long j11;
        long j12;
        validateUplo(i9);
        validateSYR2K(Element.F64_2(this.mRS), i10, allocation, allocation2, allocation3);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        long id4 = allocation3.getID(this.mRS);
        if (isIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            j11 = getDummyAlloc(allocation2);
            j10 = dummyAlloc;
            j12 = getDummyAlloc(allocation3);
        } else {
            j10 = id2;
            j11 = id3;
            j12 = id4;
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 134, i10, 0, 0, i9, 0, 0, allocation3.getType().getX(), i11, double2.f941x, double2.f942y, j10, j11, double22.f941x, double22.f942y, j12, 0, 0, 0, 0, isIncSupp);
    }

    public void ZSYRK(int i9, int i10, Double2 double2, Allocation allocation, Double2 double22, Allocation allocation2) {
        int x10;
        validateTranspose(i10);
        validateUplo(i9);
        validateL3(Element.F64_2(this.mRS), i10, 0, 0, allocation, null, allocation2);
        if (i10 != 111) {
            x10 = allocation.getType().getY();
        } else {
            x10 = allocation.getType().getX();
        }
        int i11 = x10;
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 133, i10, 0, 0, i9, 0, 0, allocation2.getType().getX(), i11, double2.f941x, double2.f942y, id2, 0L, double22.f941x, double22.f942y, allocation2.getID(this.mRS), 0, 0, 0, 0, isIncSupp);
    }

    public void ZTBMV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        if (i12 >= 0) {
            validateTRMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i13);
            int y10 = allocation.getType().getY();
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 74, i10, 0, 0, i9, i11, 0, y10, i12, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("K must be greater than or equal to 0");
    }

    public void ZTBSV(int i9, int i10, int i11, int i12, Allocation allocation, Allocation allocation2, int i13) {
        validateTRMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i13);
        int y10 = allocation.getType().getY();
        if (i12 >= 0) {
            boolean isIncSupp = isIncSupp();
            long id2 = allocation.getID(this.mRS);
            long id3 = allocation2.getID(this.mRS);
            if (isIncSupp) {
                id2 = getDummyAlloc(allocation);
                id3 = getDummyAlloc(allocation2);
            }
            RenderScript renderScript = this.mRS;
            renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 77, i10, 0, 0, i9, i11, 0, y10, i12, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i13, 0, 0, 0, isIncSupp);
            return;
        }
        throw new RSRuntimeException("Number of diagonals must be positive");
    }

    public void ZTPMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 75, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void ZTPSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        int validateTPMV = validateTPMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 78, i10, 0, 0, i9, i11, 0, validateTPMV, 0, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void ZTRMM(int i9, int i10, int i11, int i12, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRMM(Element.F64_2(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), RsBlas_ztrmm, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f941x, double2.f942y, id2, j10, 0.0d, 0.0d, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void ZTRMV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 73, i10, 0, 0, i9, i11, 0, y10, 0, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }

    public void ZTRSM(int i9, int i10, int i11, int i12, Double2 double2, Allocation allocation, Allocation allocation2) {
        validateUplo(i10);
        validateDiag(i12);
        validateTRSM(Element.F64_2(this.mRS), i9, i11, allocation, allocation2);
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        long j10 = id3;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 136, i11, 0, i9, i10, i12, allocation2.getType().getY(), allocation2.getType().getX(), 0, double2.f941x, double2.f942y, id2, j10, 0.0d, 0.0d, 0L, 0, 0, 0, 0, isIncSupp);
    }

    public void ZTRSV(int i9, int i10, int i11, Allocation allocation, Allocation allocation2, int i12) {
        validateTRMV(Element.F64_2(this.mRS), i9, i10, i11, allocation, allocation2, i12);
        int y10 = allocation.getType().getY();
        boolean isIncSupp = isIncSupp();
        long id2 = allocation.getID(this.mRS);
        long id3 = allocation2.getID(this.mRS);
        if (isIncSupp) {
            id2 = getDummyAlloc(allocation);
            id3 = getDummyAlloc(allocation2);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptIntrinsicBLAS_Z(getID(renderScript), 76, i10, 0, 0, i9, i11, 0, y10, 0, 0.0d, 0.0d, id2, id3, 0.0d, 0.0d, 0L, i12, 0, 0, 0, isIncSupp);
    }
}
