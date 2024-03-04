package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.Duration;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.v;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class OutlierDetection extends GeneratedMessageV3 implements h {
    public static final int BASE_EJECTION_TIME_FIELD_NUMBER = 3;
    public static final int CONSECUTIVE_5XX_FIELD_NUMBER = 1;
    public static final int CONSECUTIVE_GATEWAY_FAILURE_FIELD_NUMBER = 10;
    public static final int CONSECUTIVE_LOCAL_ORIGIN_FAILURE_FIELD_NUMBER = 13;
    public static final int ENFORCING_CONSECUTIVE_5XX_FIELD_NUMBER = 5;
    public static final int ENFORCING_CONSECUTIVE_GATEWAY_FAILURE_FIELD_NUMBER = 11;
    public static final int ENFORCING_CONSECUTIVE_LOCAL_ORIGIN_FAILURE_FIELD_NUMBER = 14;
    public static final int ENFORCING_FAILURE_PERCENTAGE_FIELD_NUMBER = 17;
    public static final int ENFORCING_FAILURE_PERCENTAGE_LOCAL_ORIGIN_FIELD_NUMBER = 18;
    public static final int ENFORCING_LOCAL_ORIGIN_SUCCESS_RATE_FIELD_NUMBER = 15;
    public static final int ENFORCING_SUCCESS_RATE_FIELD_NUMBER = 6;
    public static final int FAILURE_PERCENTAGE_MINIMUM_HOSTS_FIELD_NUMBER = 19;
    public static final int FAILURE_PERCENTAGE_REQUEST_VOLUME_FIELD_NUMBER = 20;
    public static final int FAILURE_PERCENTAGE_THRESHOLD_FIELD_NUMBER = 16;
    public static final int INTERVAL_FIELD_NUMBER = 2;
    public static final int MAX_EJECTION_PERCENT_FIELD_NUMBER = 4;
    public static final int MAX_EJECTION_TIME_FIELD_NUMBER = 21;
    public static final int SPLIT_EXTERNAL_LOCAL_ORIGIN_ERRORS_FIELD_NUMBER = 12;
    public static final int SUCCESS_RATE_MINIMUM_HOSTS_FIELD_NUMBER = 7;
    public static final int SUCCESS_RATE_REQUEST_VOLUME_FIELD_NUMBER = 8;
    public static final int SUCCESS_RATE_STDEV_FACTOR_FIELD_NUMBER = 9;
    private static final long serialVersionUID = 0;
    private Duration baseEjectionTime_;
    private UInt32Value consecutive5Xx_;
    private UInt32Value consecutiveGatewayFailure_;
    private UInt32Value consecutiveLocalOriginFailure_;
    private UInt32Value enforcingConsecutive5Xx_;
    private UInt32Value enforcingConsecutiveGatewayFailure_;
    private UInt32Value enforcingConsecutiveLocalOriginFailure_;
    private UInt32Value enforcingFailurePercentageLocalOrigin_;
    private UInt32Value enforcingFailurePercentage_;
    private UInt32Value enforcingLocalOriginSuccessRate_;
    private UInt32Value enforcingSuccessRate_;
    private UInt32Value failurePercentageMinimumHosts_;
    private UInt32Value failurePercentageRequestVolume_;
    private UInt32Value failurePercentageThreshold_;
    private Duration interval_;
    private UInt32Value maxEjectionPercent_;
    private Duration maxEjectionTime_;
    private byte memoizedIsInitialized;
    private boolean splitExternalLocalOriginErrors_;
    private UInt32Value successRateMinimumHosts_;
    private UInt32Value successRateRequestVolume_;
    private UInt32Value successRateStdevFactor_;
    private static final OutlierDetection DEFAULT_INSTANCE = new OutlierDetection();
    private static final e2<OutlierDetection> PARSER = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<OutlierDetection> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public OutlierDetection m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new OutlierDetection(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements h {
        private boolean A;
        private UInt32Value B;
        private q2<UInt32Value, UInt32Value.b, e3> C;
        private UInt32Value D;
        private q2<UInt32Value, UInt32Value.b, e3> E;
        private UInt32Value F;
        private q2<UInt32Value, UInt32Value.b, e3> G;
        private UInt32Value H;
        private q2<UInt32Value, UInt32Value.b, e3> I;
        private UInt32Value J;
        private q2<UInt32Value, UInt32Value.b, e3> K;
        private UInt32Value L;
        private q2<UInt32Value, UInt32Value.b, e3> M;
        private UInt32Value N;
        private q2<UInt32Value, UInt32Value.b, e3> O;
        private UInt32Value P;
        private q2<UInt32Value, UInt32Value.b, e3> Q;
        private Duration R;

        /* renamed from: a1  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47696a1;

        /* renamed from: e  reason: collision with root package name */
        private UInt32Value f47697e;

        /* renamed from: f  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47698f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f47699g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47700h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f47701i;

        /* renamed from: j  reason: collision with root package name */
        private q2<Duration, Duration.b, v> f47702j;

        /* renamed from: k  reason: collision with root package name */
        private UInt32Value f47703k;

        /* renamed from: l  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47704l;

        /* renamed from: m  reason: collision with root package name */
        private UInt32Value f47705m;

        /* renamed from: n  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47706n;

        /* renamed from: o  reason: collision with root package name */
        private UInt32Value f47707o;

        /* renamed from: p  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47708p;

        /* renamed from: q  reason: collision with root package name */
        private UInt32Value f47709q;

        /* renamed from: r  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47710r;

        /* renamed from: s  reason: collision with root package name */
        private UInt32Value f47711s;

        /* renamed from: t  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47712t;

        /* renamed from: u  reason: collision with root package name */
        private UInt32Value f47713u;

        /* renamed from: v  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47714v;

        /* renamed from: w  reason: collision with root package name */
        private UInt32Value f47715w;

        /* renamed from: x  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47716x;

        /* renamed from: y  reason: collision with root package name */
        private UInt32Value f47717y;

        /* renamed from: z  reason: collision with root package name */
        private q2<UInt32Value, UInt32Value.b, e3> f47718z;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public b B0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47710r;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47709q;
                if (uInt32Value2 != null) {
                    this.f47709q = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47709q = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b D0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47712t;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47711s;
                if (uInt32Value2 != null) {
                    this.f47711s = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47711s = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b H0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47714v;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47713u;
                if (uInt32Value2 != null) {
                    this.f47713u = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47713u = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: I0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: J0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return i.f47762b.d(OutlierDetection.class, b.class);
        }

        public b K0(boolean z10) {
            this.A = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: L0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public OutlierDetection build() {
            OutlierDetection I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public OutlierDetection I() {
            OutlierDetection outlierDetection = new OutlierDetection(this, (a) null);
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47698f;
            if (q2Var == null) {
                outlierDetection.consecutive5Xx_ = this.f47697e;
            } else {
                outlierDetection.consecutive5Xx_ = q2Var.b();
            }
            q2<Duration, Duration.b, v> q2Var2 = this.f47700h;
            if (q2Var2 == null) {
                outlierDetection.interval_ = this.f47699g;
            } else {
                outlierDetection.interval_ = q2Var2.b();
            }
            q2<Duration, Duration.b, v> q2Var3 = this.f47702j;
            if (q2Var3 == null) {
                outlierDetection.baseEjectionTime_ = this.f47701i;
            } else {
                outlierDetection.baseEjectionTime_ = q2Var3.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var4 = this.f47704l;
            if (q2Var4 == null) {
                outlierDetection.maxEjectionPercent_ = this.f47703k;
            } else {
                outlierDetection.maxEjectionPercent_ = q2Var4.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var5 = this.f47706n;
            if (q2Var5 == null) {
                outlierDetection.enforcingConsecutive5Xx_ = this.f47705m;
            } else {
                outlierDetection.enforcingConsecutive5Xx_ = q2Var5.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var6 = this.f47708p;
            if (q2Var6 == null) {
                outlierDetection.enforcingSuccessRate_ = this.f47707o;
            } else {
                outlierDetection.enforcingSuccessRate_ = q2Var6.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var7 = this.f47710r;
            if (q2Var7 == null) {
                outlierDetection.successRateMinimumHosts_ = this.f47709q;
            } else {
                outlierDetection.successRateMinimumHosts_ = q2Var7.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var8 = this.f47712t;
            if (q2Var8 == null) {
                outlierDetection.successRateRequestVolume_ = this.f47711s;
            } else {
                outlierDetection.successRateRequestVolume_ = q2Var8.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var9 = this.f47714v;
            if (q2Var9 == null) {
                outlierDetection.successRateStdevFactor_ = this.f47713u;
            } else {
                outlierDetection.successRateStdevFactor_ = q2Var9.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var10 = this.f47716x;
            if (q2Var10 == null) {
                outlierDetection.consecutiveGatewayFailure_ = this.f47715w;
            } else {
                outlierDetection.consecutiveGatewayFailure_ = q2Var10.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var11 = this.f47718z;
            if (q2Var11 == null) {
                outlierDetection.enforcingConsecutiveGatewayFailure_ = this.f47717y;
            } else {
                outlierDetection.enforcingConsecutiveGatewayFailure_ = q2Var11.b();
            }
            outlierDetection.splitExternalLocalOriginErrors_ = this.A;
            q2<UInt32Value, UInt32Value.b, e3> q2Var12 = this.C;
            if (q2Var12 == null) {
                outlierDetection.consecutiveLocalOriginFailure_ = this.B;
            } else {
                outlierDetection.consecutiveLocalOriginFailure_ = q2Var12.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var13 = this.E;
            if (q2Var13 == null) {
                outlierDetection.enforcingConsecutiveLocalOriginFailure_ = this.D;
            } else {
                outlierDetection.enforcingConsecutiveLocalOriginFailure_ = q2Var13.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var14 = this.G;
            if (q2Var14 == null) {
                outlierDetection.enforcingLocalOriginSuccessRate_ = this.F;
            } else {
                outlierDetection.enforcingLocalOriginSuccessRate_ = q2Var14.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var15 = this.I;
            if (q2Var15 == null) {
                outlierDetection.failurePercentageThreshold_ = this.H;
            } else {
                outlierDetection.failurePercentageThreshold_ = q2Var15.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var16 = this.K;
            if (q2Var16 == null) {
                outlierDetection.enforcingFailurePercentage_ = this.J;
            } else {
                outlierDetection.enforcingFailurePercentage_ = q2Var16.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var17 = this.M;
            if (q2Var17 == null) {
                outlierDetection.enforcingFailurePercentageLocalOrigin_ = this.L;
            } else {
                outlierDetection.enforcingFailurePercentageLocalOrigin_ = q2Var17.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var18 = this.O;
            if (q2Var18 == null) {
                outlierDetection.failurePercentageMinimumHosts_ = this.N;
            } else {
                outlierDetection.failurePercentageMinimumHosts_ = q2Var18.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var19 = this.Q;
            if (q2Var19 == null) {
                outlierDetection.failurePercentageRequestVolume_ = this.P;
            } else {
                outlierDetection.failurePercentageRequestVolume_ = q2Var19.b();
            }
            q2<Duration, Duration.b, v> q2Var20 = this.f47696a1;
            if (q2Var20 == null) {
                outlierDetection.maxEjectionTime_ = this.R;
            } else {
                outlierDetection.maxEjectionTime_ = q2Var20.b();
            }
            Q();
            return outlierDetection;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public OutlierDetection getDefaultInstanceForType() {
            return OutlierDetection.getDefaultInstance();
        }

        public b d0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47702j;
            if (q2Var == null) {
                Duration duration2 = this.f47701i;
                if (duration2 != null) {
                    this.f47701i = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47701i = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b e0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47698f;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47697e;
                if (uInt32Value2 != null) {
                    this.f47697e = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47697e = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b g0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47716x;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47715w;
                if (uInt32Value2 != null) {
                    this.f47715w = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47715w = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return i.f47761a;
        }

        public b h0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.C;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.B;
                if (uInt32Value2 != null) {
                    this.B = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.B = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b i0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47706n;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47705m;
                if (uInt32Value2 != null) {
                    this.f47705m = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47705m = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b j0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47718z;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47717y;
                if (uInt32Value2 != null) {
                    this.f47717y = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47717y = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b k0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.E;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.D;
                if (uInt32Value2 != null) {
                    this.D = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.D = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b l0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.K;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.J;
                if (uInt32Value2 != null) {
                    this.J = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.J = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b m0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.M;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.L;
                if (uInt32Value2 != null) {
                    this.L = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.L = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b n0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.G;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.F;
                if (uInt32Value2 != null) {
                    this.F = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.F = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b o0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47708p;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47707o;
                if (uInt32Value2 != null) {
                    this.f47707o = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47707o = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b q0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.O;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.N;
                if (uInt32Value2 != null) {
                    this.N = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.N = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b r0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.Q;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.P;
                if (uInt32Value2 != null) {
                    this.P = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.P = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b s0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.I;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.H;
                if (uInt32Value2 != null) {
                    this.H = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.H = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: t0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection.access$2600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.v0(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.v0(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3.OutlierDetection$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: u0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof OutlierDetection) {
                return v0((OutlierDetection) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b v0(OutlierDetection outlierDetection) {
            if (outlierDetection == OutlierDetection.getDefaultInstance()) {
                return this;
            }
            if (outlierDetection.hasConsecutive5Xx()) {
                e0(outlierDetection.getConsecutive5Xx());
            }
            if (outlierDetection.hasInterval()) {
                x0(outlierDetection.getInterval());
            }
            if (outlierDetection.hasBaseEjectionTime()) {
                d0(outlierDetection.getBaseEjectionTime());
            }
            if (outlierDetection.hasMaxEjectionPercent()) {
                y0(outlierDetection.getMaxEjectionPercent());
            }
            if (outlierDetection.hasEnforcingConsecutive5Xx()) {
                i0(outlierDetection.getEnforcingConsecutive5Xx());
            }
            if (outlierDetection.hasEnforcingSuccessRate()) {
                o0(outlierDetection.getEnforcingSuccessRate());
            }
            if (outlierDetection.hasSuccessRateMinimumHosts()) {
                B0(outlierDetection.getSuccessRateMinimumHosts());
            }
            if (outlierDetection.hasSuccessRateRequestVolume()) {
                D0(outlierDetection.getSuccessRateRequestVolume());
            }
            if (outlierDetection.hasSuccessRateStdevFactor()) {
                H0(outlierDetection.getSuccessRateStdevFactor());
            }
            if (outlierDetection.hasConsecutiveGatewayFailure()) {
                g0(outlierDetection.getConsecutiveGatewayFailure());
            }
            if (outlierDetection.hasEnforcingConsecutiveGatewayFailure()) {
                j0(outlierDetection.getEnforcingConsecutiveGatewayFailure());
            }
            if (outlierDetection.getSplitExternalLocalOriginErrors()) {
                K0(outlierDetection.getSplitExternalLocalOriginErrors());
            }
            if (outlierDetection.hasConsecutiveLocalOriginFailure()) {
                h0(outlierDetection.getConsecutiveLocalOriginFailure());
            }
            if (outlierDetection.hasEnforcingConsecutiveLocalOriginFailure()) {
                k0(outlierDetection.getEnforcingConsecutiveLocalOriginFailure());
            }
            if (outlierDetection.hasEnforcingLocalOriginSuccessRate()) {
                n0(outlierDetection.getEnforcingLocalOriginSuccessRate());
            }
            if (outlierDetection.hasFailurePercentageThreshold()) {
                s0(outlierDetection.getFailurePercentageThreshold());
            }
            if (outlierDetection.hasEnforcingFailurePercentage()) {
                l0(outlierDetection.getEnforcingFailurePercentage());
            }
            if (outlierDetection.hasEnforcingFailurePercentageLocalOrigin()) {
                m0(outlierDetection.getEnforcingFailurePercentageLocalOrigin());
            }
            if (outlierDetection.hasFailurePercentageMinimumHosts()) {
                q0(outlierDetection.getFailurePercentageMinimumHosts());
            }
            if (outlierDetection.hasFailurePercentageRequestVolume()) {
                r0(outlierDetection.getFailurePercentageRequestVolume());
            }
            if (outlierDetection.hasMaxEjectionTime()) {
                z0(outlierDetection.getMaxEjectionTime());
            }
            z(((GeneratedMessageV3) outlierDetection).unknownFields);
            R();
            return this;
        }

        public b x0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47700h;
            if (q2Var == null) {
                Duration duration2 = this.f47699g;
                if (duration2 != null) {
                    this.f47699g = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.f47699g = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        public b y0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.f47704l;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.f47703k;
                if (uInt32Value2 != null) {
                    this.f47703k = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.f47703k = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public b z0(Duration duration) {
            q2<Duration, Duration.b, v> q2Var = this.f47696a1;
            if (q2Var == null) {
                Duration duration2 = this.R;
                if (duration2 != null) {
                    this.R = Duration.newBuilder(duration2).e0(duration).I();
                } else {
                    this.R = duration;
                }
                R();
            } else {
                q2Var.e(duration);
            }
            return this;
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            b0();
        }
    }

    /* synthetic */ OutlierDetection(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static OutlierDetection getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return i.f47761a;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static OutlierDetection parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static OutlierDetection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<OutlierDetection> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutlierDetection)) {
            return super.equals(obj);
        }
        OutlierDetection outlierDetection = (OutlierDetection) obj;
        if (hasConsecutive5Xx() != outlierDetection.hasConsecutive5Xx()) {
            return false;
        }
        if ((!hasConsecutive5Xx() || getConsecutive5Xx().equals(outlierDetection.getConsecutive5Xx())) && hasInterval() == outlierDetection.hasInterval()) {
            if ((!hasInterval() || getInterval().equals(outlierDetection.getInterval())) && hasBaseEjectionTime() == outlierDetection.hasBaseEjectionTime()) {
                if ((!hasBaseEjectionTime() || getBaseEjectionTime().equals(outlierDetection.getBaseEjectionTime())) && hasMaxEjectionPercent() == outlierDetection.hasMaxEjectionPercent()) {
                    if ((!hasMaxEjectionPercent() || getMaxEjectionPercent().equals(outlierDetection.getMaxEjectionPercent())) && hasEnforcingConsecutive5Xx() == outlierDetection.hasEnforcingConsecutive5Xx()) {
                        if ((!hasEnforcingConsecutive5Xx() || getEnforcingConsecutive5Xx().equals(outlierDetection.getEnforcingConsecutive5Xx())) && hasEnforcingSuccessRate() == outlierDetection.hasEnforcingSuccessRate()) {
                            if ((!hasEnforcingSuccessRate() || getEnforcingSuccessRate().equals(outlierDetection.getEnforcingSuccessRate())) && hasSuccessRateMinimumHosts() == outlierDetection.hasSuccessRateMinimumHosts()) {
                                if ((!hasSuccessRateMinimumHosts() || getSuccessRateMinimumHosts().equals(outlierDetection.getSuccessRateMinimumHosts())) && hasSuccessRateRequestVolume() == outlierDetection.hasSuccessRateRequestVolume()) {
                                    if ((!hasSuccessRateRequestVolume() || getSuccessRateRequestVolume().equals(outlierDetection.getSuccessRateRequestVolume())) && hasSuccessRateStdevFactor() == outlierDetection.hasSuccessRateStdevFactor()) {
                                        if ((!hasSuccessRateStdevFactor() || getSuccessRateStdevFactor().equals(outlierDetection.getSuccessRateStdevFactor())) && hasConsecutiveGatewayFailure() == outlierDetection.hasConsecutiveGatewayFailure()) {
                                            if ((!hasConsecutiveGatewayFailure() || getConsecutiveGatewayFailure().equals(outlierDetection.getConsecutiveGatewayFailure())) && hasEnforcingConsecutiveGatewayFailure() == outlierDetection.hasEnforcingConsecutiveGatewayFailure()) {
                                                if ((!hasEnforcingConsecutiveGatewayFailure() || getEnforcingConsecutiveGatewayFailure().equals(outlierDetection.getEnforcingConsecutiveGatewayFailure())) && getSplitExternalLocalOriginErrors() == outlierDetection.getSplitExternalLocalOriginErrors() && hasConsecutiveLocalOriginFailure() == outlierDetection.hasConsecutiveLocalOriginFailure()) {
                                                    if ((!hasConsecutiveLocalOriginFailure() || getConsecutiveLocalOriginFailure().equals(outlierDetection.getConsecutiveLocalOriginFailure())) && hasEnforcingConsecutiveLocalOriginFailure() == outlierDetection.hasEnforcingConsecutiveLocalOriginFailure()) {
                                                        if ((!hasEnforcingConsecutiveLocalOriginFailure() || getEnforcingConsecutiveLocalOriginFailure().equals(outlierDetection.getEnforcingConsecutiveLocalOriginFailure())) && hasEnforcingLocalOriginSuccessRate() == outlierDetection.hasEnforcingLocalOriginSuccessRate()) {
                                                            if ((!hasEnforcingLocalOriginSuccessRate() || getEnforcingLocalOriginSuccessRate().equals(outlierDetection.getEnforcingLocalOriginSuccessRate())) && hasFailurePercentageThreshold() == outlierDetection.hasFailurePercentageThreshold()) {
                                                                if ((!hasFailurePercentageThreshold() || getFailurePercentageThreshold().equals(outlierDetection.getFailurePercentageThreshold())) && hasEnforcingFailurePercentage() == outlierDetection.hasEnforcingFailurePercentage()) {
                                                                    if ((!hasEnforcingFailurePercentage() || getEnforcingFailurePercentage().equals(outlierDetection.getEnforcingFailurePercentage())) && hasEnforcingFailurePercentageLocalOrigin() == outlierDetection.hasEnforcingFailurePercentageLocalOrigin()) {
                                                                        if ((!hasEnforcingFailurePercentageLocalOrigin() || getEnforcingFailurePercentageLocalOrigin().equals(outlierDetection.getEnforcingFailurePercentageLocalOrigin())) && hasFailurePercentageMinimumHosts() == outlierDetection.hasFailurePercentageMinimumHosts()) {
                                                                            if ((!hasFailurePercentageMinimumHosts() || getFailurePercentageMinimumHosts().equals(outlierDetection.getFailurePercentageMinimumHosts())) && hasFailurePercentageRequestVolume() == outlierDetection.hasFailurePercentageRequestVolume()) {
                                                                                if ((!hasFailurePercentageRequestVolume() || getFailurePercentageRequestVolume().equals(outlierDetection.getFailurePercentageRequestVolume())) && hasMaxEjectionTime() == outlierDetection.hasMaxEjectionTime()) {
                                                                                    return (!hasMaxEjectionTime() || getMaxEjectionTime().equals(outlierDetection.getMaxEjectionTime())) && this.unknownFields.equals(outlierDetection.unknownFields);
                                                                                }
                                                                                return false;
                                                                            }
                                                                            return false;
                                                                        }
                                                                        return false;
                                                                    }
                                                                    return false;
                                                                }
                                                                return false;
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public Duration getBaseEjectionTime() {
        Duration duration = this.baseEjectionTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getBaseEjectionTimeOrBuilder() {
        return getBaseEjectionTime();
    }

    public UInt32Value getConsecutive5Xx() {
        UInt32Value uInt32Value = this.consecutive5Xx_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getConsecutive5XxOrBuilder() {
        return getConsecutive5Xx();
    }

    public UInt32Value getConsecutiveGatewayFailure() {
        UInt32Value uInt32Value = this.consecutiveGatewayFailure_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getConsecutiveGatewayFailureOrBuilder() {
        return getConsecutiveGatewayFailure();
    }

    public UInt32Value getConsecutiveLocalOriginFailure() {
        UInt32Value uInt32Value = this.consecutiveLocalOriginFailure_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getConsecutiveLocalOriginFailureOrBuilder() {
        return getConsecutiveLocalOriginFailure();
    }

    public UInt32Value getEnforcingConsecutive5Xx() {
        UInt32Value uInt32Value = this.enforcingConsecutive5Xx_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingConsecutive5XxOrBuilder() {
        return getEnforcingConsecutive5Xx();
    }

    public UInt32Value getEnforcingConsecutiveGatewayFailure() {
        UInt32Value uInt32Value = this.enforcingConsecutiveGatewayFailure_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingConsecutiveGatewayFailureOrBuilder() {
        return getEnforcingConsecutiveGatewayFailure();
    }

    public UInt32Value getEnforcingConsecutiveLocalOriginFailure() {
        UInt32Value uInt32Value = this.enforcingConsecutiveLocalOriginFailure_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingConsecutiveLocalOriginFailureOrBuilder() {
        return getEnforcingConsecutiveLocalOriginFailure();
    }

    public UInt32Value getEnforcingFailurePercentage() {
        UInt32Value uInt32Value = this.enforcingFailurePercentage_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public UInt32Value getEnforcingFailurePercentageLocalOrigin() {
        UInt32Value uInt32Value = this.enforcingFailurePercentageLocalOrigin_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingFailurePercentageLocalOriginOrBuilder() {
        return getEnforcingFailurePercentageLocalOrigin();
    }

    public e3 getEnforcingFailurePercentageOrBuilder() {
        return getEnforcingFailurePercentage();
    }

    public UInt32Value getEnforcingLocalOriginSuccessRate() {
        UInt32Value uInt32Value = this.enforcingLocalOriginSuccessRate_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingLocalOriginSuccessRateOrBuilder() {
        return getEnforcingLocalOriginSuccessRate();
    }

    public UInt32Value getEnforcingSuccessRate() {
        UInt32Value uInt32Value = this.enforcingSuccessRate_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getEnforcingSuccessRateOrBuilder() {
        return getEnforcingSuccessRate();
    }

    public UInt32Value getFailurePercentageMinimumHosts() {
        UInt32Value uInt32Value = this.failurePercentageMinimumHosts_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getFailurePercentageMinimumHostsOrBuilder() {
        return getFailurePercentageMinimumHosts();
    }

    public UInt32Value getFailurePercentageRequestVolume() {
        UInt32Value uInt32Value = this.failurePercentageRequestVolume_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getFailurePercentageRequestVolumeOrBuilder() {
        return getFailurePercentageRequestVolume();
    }

    public UInt32Value getFailurePercentageThreshold() {
        UInt32Value uInt32Value = this.failurePercentageThreshold_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getFailurePercentageThresholdOrBuilder() {
        return getFailurePercentageThreshold();
    }

    public Duration getInterval() {
        Duration duration = this.interval_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getIntervalOrBuilder() {
        return getInterval();
    }

    public UInt32Value getMaxEjectionPercent() {
        UInt32Value uInt32Value = this.maxEjectionPercent_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getMaxEjectionPercentOrBuilder() {
        return getMaxEjectionPercent();
    }

    public Duration getMaxEjectionTime() {
        Duration duration = this.maxEjectionTime_;
        return duration == null ? Duration.getDefaultInstance() : duration;
    }

    public v getMaxEjectionTimeOrBuilder() {
        return getMaxEjectionTime();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<OutlierDetection> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.consecutive5Xx_ != null ? 0 + CodedOutputStream.G(1, getConsecutive5Xx()) : 0;
        if (this.interval_ != null) {
            G += CodedOutputStream.G(2, getInterval());
        }
        if (this.baseEjectionTime_ != null) {
            G += CodedOutputStream.G(3, getBaseEjectionTime());
        }
        if (this.maxEjectionPercent_ != null) {
            G += CodedOutputStream.G(4, getMaxEjectionPercent());
        }
        if (this.enforcingConsecutive5Xx_ != null) {
            G += CodedOutputStream.G(5, getEnforcingConsecutive5Xx());
        }
        if (this.enforcingSuccessRate_ != null) {
            G += CodedOutputStream.G(6, getEnforcingSuccessRate());
        }
        if (this.successRateMinimumHosts_ != null) {
            G += CodedOutputStream.G(7, getSuccessRateMinimumHosts());
        }
        if (this.successRateRequestVolume_ != null) {
            G += CodedOutputStream.G(8, getSuccessRateRequestVolume());
        }
        if (this.successRateStdevFactor_ != null) {
            G += CodedOutputStream.G(9, getSuccessRateStdevFactor());
        }
        if (this.consecutiveGatewayFailure_ != null) {
            G += CodedOutputStream.G(10, getConsecutiveGatewayFailure());
        }
        if (this.enforcingConsecutiveGatewayFailure_ != null) {
            G += CodedOutputStream.G(11, getEnforcingConsecutiveGatewayFailure());
        }
        boolean z10 = this.splitExternalLocalOriginErrors_;
        if (z10) {
            G += CodedOutputStream.e(12, z10);
        }
        if (this.consecutiveLocalOriginFailure_ != null) {
            G += CodedOutputStream.G(13, getConsecutiveLocalOriginFailure());
        }
        if (this.enforcingConsecutiveLocalOriginFailure_ != null) {
            G += CodedOutputStream.G(14, getEnforcingConsecutiveLocalOriginFailure());
        }
        if (this.enforcingLocalOriginSuccessRate_ != null) {
            G += CodedOutputStream.G(15, getEnforcingLocalOriginSuccessRate());
        }
        if (this.failurePercentageThreshold_ != null) {
            G += CodedOutputStream.G(16, getFailurePercentageThreshold());
        }
        if (this.enforcingFailurePercentage_ != null) {
            G += CodedOutputStream.G(17, getEnforcingFailurePercentage());
        }
        if (this.enforcingFailurePercentageLocalOrigin_ != null) {
            G += CodedOutputStream.G(18, getEnforcingFailurePercentageLocalOrigin());
        }
        if (this.failurePercentageMinimumHosts_ != null) {
            G += CodedOutputStream.G(19, getFailurePercentageMinimumHosts());
        }
        if (this.failurePercentageRequestVolume_ != null) {
            G += CodedOutputStream.G(20, getFailurePercentageRequestVolume());
        }
        if (this.maxEjectionTime_ != null) {
            G += CodedOutputStream.G(21, getMaxEjectionTime());
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public boolean getSplitExternalLocalOriginErrors() {
        return this.splitExternalLocalOriginErrors_;
    }

    public UInt32Value getSuccessRateMinimumHosts() {
        UInt32Value uInt32Value = this.successRateMinimumHosts_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getSuccessRateMinimumHostsOrBuilder() {
        return getSuccessRateMinimumHosts();
    }

    public UInt32Value getSuccessRateRequestVolume() {
        UInt32Value uInt32Value = this.successRateRequestVolume_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getSuccessRateRequestVolumeOrBuilder() {
        return getSuccessRateRequestVolume();
    }

    public UInt32Value getSuccessRateStdevFactor() {
        UInt32Value uInt32Value = this.successRateStdevFactor_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getSuccessRateStdevFactorOrBuilder() {
        return getSuccessRateStdevFactor();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBaseEjectionTime() {
        return this.baseEjectionTime_ != null;
    }

    public boolean hasConsecutive5Xx() {
        return this.consecutive5Xx_ != null;
    }

    public boolean hasConsecutiveGatewayFailure() {
        return this.consecutiveGatewayFailure_ != null;
    }

    public boolean hasConsecutiveLocalOriginFailure() {
        return this.consecutiveLocalOriginFailure_ != null;
    }

    public boolean hasEnforcingConsecutive5Xx() {
        return this.enforcingConsecutive5Xx_ != null;
    }

    public boolean hasEnforcingConsecutiveGatewayFailure() {
        return this.enforcingConsecutiveGatewayFailure_ != null;
    }

    public boolean hasEnforcingConsecutiveLocalOriginFailure() {
        return this.enforcingConsecutiveLocalOriginFailure_ != null;
    }

    public boolean hasEnforcingFailurePercentage() {
        return this.enforcingFailurePercentage_ != null;
    }

    public boolean hasEnforcingFailurePercentageLocalOrigin() {
        return this.enforcingFailurePercentageLocalOrigin_ != null;
    }

    public boolean hasEnforcingLocalOriginSuccessRate() {
        return this.enforcingLocalOriginSuccessRate_ != null;
    }

    public boolean hasEnforcingSuccessRate() {
        return this.enforcingSuccessRate_ != null;
    }

    public boolean hasFailurePercentageMinimumHosts() {
        return this.failurePercentageMinimumHosts_ != null;
    }

    public boolean hasFailurePercentageRequestVolume() {
        return this.failurePercentageRequestVolume_ != null;
    }

    public boolean hasFailurePercentageThreshold() {
        return this.failurePercentageThreshold_ != null;
    }

    public boolean hasInterval() {
        return this.interval_ != null;
    }

    public boolean hasMaxEjectionPercent() {
        return this.maxEjectionPercent_ != null;
    }

    public boolean hasMaxEjectionTime() {
        return this.maxEjectionTime_ != null;
    }

    public boolean hasSuccessRateMinimumHosts() {
        return this.successRateMinimumHosts_ != null;
    }

    public boolean hasSuccessRateRequestVolume() {
        return this.successRateRequestVolume_ != null;
    }

    public boolean hasSuccessRateStdevFactor() {
        return this.successRateStdevFactor_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasConsecutive5Xx()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getConsecutive5Xx().hashCode();
        }
        if (hasInterval()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getInterval().hashCode();
        }
        if (hasBaseEjectionTime()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getBaseEjectionTime().hashCode();
        }
        if (hasMaxEjectionPercent()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getMaxEjectionPercent().hashCode();
        }
        if (hasEnforcingConsecutive5Xx()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getEnforcingConsecutive5Xx().hashCode();
        }
        if (hasEnforcingSuccessRate()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getEnforcingSuccessRate().hashCode();
        }
        if (hasSuccessRateMinimumHosts()) {
            hashCode = (((hashCode * 37) + 7) * 53) + getSuccessRateMinimumHosts().hashCode();
        }
        if (hasSuccessRateRequestVolume()) {
            hashCode = (((hashCode * 37) + 8) * 53) + getSuccessRateRequestVolume().hashCode();
        }
        if (hasSuccessRateStdevFactor()) {
            hashCode = (((hashCode * 37) + 9) * 53) + getSuccessRateStdevFactor().hashCode();
        }
        if (hasConsecutiveGatewayFailure()) {
            hashCode = (((hashCode * 37) + 10) * 53) + getConsecutiveGatewayFailure().hashCode();
        }
        if (hasEnforcingConsecutiveGatewayFailure()) {
            hashCode = (((hashCode * 37) + 11) * 53) + getEnforcingConsecutiveGatewayFailure().hashCode();
        }
        int d10 = (((hashCode * 37) + 12) * 53) + u0.d(getSplitExternalLocalOriginErrors());
        if (hasConsecutiveLocalOriginFailure()) {
            d10 = (((d10 * 37) + 13) * 53) + getConsecutiveLocalOriginFailure().hashCode();
        }
        if (hasEnforcingConsecutiveLocalOriginFailure()) {
            d10 = (((d10 * 37) + 14) * 53) + getEnforcingConsecutiveLocalOriginFailure().hashCode();
        }
        if (hasEnforcingLocalOriginSuccessRate()) {
            d10 = (((d10 * 37) + 15) * 53) + getEnforcingLocalOriginSuccessRate().hashCode();
        }
        if (hasFailurePercentageThreshold()) {
            d10 = (((d10 * 37) + 16) * 53) + getFailurePercentageThreshold().hashCode();
        }
        if (hasEnforcingFailurePercentage()) {
            d10 = (((d10 * 37) + 17) * 53) + getEnforcingFailurePercentage().hashCode();
        }
        if (hasEnforcingFailurePercentageLocalOrigin()) {
            d10 = (((d10 * 37) + 18) * 53) + getEnforcingFailurePercentageLocalOrigin().hashCode();
        }
        if (hasFailurePercentageMinimumHosts()) {
            d10 = (((d10 * 37) + 19) * 53) + getFailurePercentageMinimumHosts().hashCode();
        }
        if (hasFailurePercentageRequestVolume()) {
            d10 = (((d10 * 37) + 20) * 53) + getFailurePercentageRequestVolume().hashCode();
        }
        if (hasMaxEjectionTime()) {
            d10 = (((d10 * 37) + 21) * 53) + getMaxEjectionTime().hashCode();
        }
        int hashCode2 = (d10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return i.f47762b.d(OutlierDetection.class, b.class);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new OutlierDetection();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.consecutive5Xx_ != null) {
            codedOutputStream.L0(1, getConsecutive5Xx());
        }
        if (this.interval_ != null) {
            codedOutputStream.L0(2, getInterval());
        }
        if (this.baseEjectionTime_ != null) {
            codedOutputStream.L0(3, getBaseEjectionTime());
        }
        if (this.maxEjectionPercent_ != null) {
            codedOutputStream.L0(4, getMaxEjectionPercent());
        }
        if (this.enforcingConsecutive5Xx_ != null) {
            codedOutputStream.L0(5, getEnforcingConsecutive5Xx());
        }
        if (this.enforcingSuccessRate_ != null) {
            codedOutputStream.L0(6, getEnforcingSuccessRate());
        }
        if (this.successRateMinimumHosts_ != null) {
            codedOutputStream.L0(7, getSuccessRateMinimumHosts());
        }
        if (this.successRateRequestVolume_ != null) {
            codedOutputStream.L0(8, getSuccessRateRequestVolume());
        }
        if (this.successRateStdevFactor_ != null) {
            codedOutputStream.L0(9, getSuccessRateStdevFactor());
        }
        if (this.consecutiveGatewayFailure_ != null) {
            codedOutputStream.L0(10, getConsecutiveGatewayFailure());
        }
        if (this.enforcingConsecutiveGatewayFailure_ != null) {
            codedOutputStream.L0(11, getEnforcingConsecutiveGatewayFailure());
        }
        boolean z10 = this.splitExternalLocalOriginErrors_;
        if (z10) {
            codedOutputStream.n0(12, z10);
        }
        if (this.consecutiveLocalOriginFailure_ != null) {
            codedOutputStream.L0(13, getConsecutiveLocalOriginFailure());
        }
        if (this.enforcingConsecutiveLocalOriginFailure_ != null) {
            codedOutputStream.L0(14, getEnforcingConsecutiveLocalOriginFailure());
        }
        if (this.enforcingLocalOriginSuccessRate_ != null) {
            codedOutputStream.L0(15, getEnforcingLocalOriginSuccessRate());
        }
        if (this.failurePercentageThreshold_ != null) {
            codedOutputStream.L0(16, getFailurePercentageThreshold());
        }
        if (this.enforcingFailurePercentage_ != null) {
            codedOutputStream.L0(17, getEnforcingFailurePercentage());
        }
        if (this.enforcingFailurePercentageLocalOrigin_ != null) {
            codedOutputStream.L0(18, getEnforcingFailurePercentageLocalOrigin());
        }
        if (this.failurePercentageMinimumHosts_ != null) {
            codedOutputStream.L0(19, getFailurePercentageMinimumHosts());
        }
        if (this.failurePercentageRequestVolume_ != null) {
            codedOutputStream.L0(20, getFailurePercentageRequestVolume());
        }
        if (this.maxEjectionTime_ != null) {
            codedOutputStream.L0(21, getMaxEjectionTime());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ OutlierDetection(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(OutlierDetection outlierDetection) {
        return DEFAULT_INSTANCE.toBuilder().v0(outlierDetection);
    }

    public static OutlierDetection parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private OutlierDetection(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OutlierDetection parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static OutlierDetection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public OutlierDetection getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).v0(this);
    }

    public static OutlierDetection parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private OutlierDetection() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static OutlierDetection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static OutlierDetection parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    private OutlierDetection(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            UInt32Value uInt32Value = this.consecutive5Xx_;
                            UInt32Value.b builder = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.consecutive5Xx_ = uInt32Value2;
                            if (builder != null) {
                                builder.g0(uInt32Value2);
                                this.consecutive5Xx_ = builder.I();
                            } else {
                                continue;
                            }
                        case 18:
                            Duration duration = this.interval_;
                            Duration.b builder2 = duration != null ? duration.toBuilder() : null;
                            Duration duration2 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.interval_ = duration2;
                            if (builder2 != null) {
                                builder2.e0(duration2);
                                this.interval_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 26:
                            Duration duration3 = this.baseEjectionTime_;
                            Duration.b builder3 = duration3 != null ? duration3.toBuilder() : null;
                            Duration duration4 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.baseEjectionTime_ = duration4;
                            if (builder3 != null) {
                                builder3.e0(duration4);
                                this.baseEjectionTime_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 34:
                            UInt32Value uInt32Value3 = this.maxEjectionPercent_;
                            UInt32Value.b builder4 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                            UInt32Value uInt32Value4 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.maxEjectionPercent_ = uInt32Value4;
                            if (builder4 != null) {
                                builder4.g0(uInt32Value4);
                                this.maxEjectionPercent_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 42:
                            UInt32Value uInt32Value5 = this.enforcingConsecutive5Xx_;
                            UInt32Value.b builder5 = uInt32Value5 != null ? uInt32Value5.toBuilder() : null;
                            UInt32Value uInt32Value6 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingConsecutive5Xx_ = uInt32Value6;
                            if (builder5 != null) {
                                builder5.g0(uInt32Value6);
                                this.enforcingConsecutive5Xx_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 50:
                            UInt32Value uInt32Value7 = this.enforcingSuccessRate_;
                            UInt32Value.b builder6 = uInt32Value7 != null ? uInt32Value7.toBuilder() : null;
                            UInt32Value uInt32Value8 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingSuccessRate_ = uInt32Value8;
                            if (builder6 != null) {
                                builder6.g0(uInt32Value8);
                                this.enforcingSuccessRate_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 58:
                            UInt32Value uInt32Value9 = this.successRateMinimumHosts_;
                            UInt32Value.b builder7 = uInt32Value9 != null ? uInt32Value9.toBuilder() : null;
                            UInt32Value uInt32Value10 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.successRateMinimumHosts_ = uInt32Value10;
                            if (builder7 != null) {
                                builder7.g0(uInt32Value10);
                                this.successRateMinimumHosts_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 66:
                            UInt32Value uInt32Value11 = this.successRateRequestVolume_;
                            UInt32Value.b builder8 = uInt32Value11 != null ? uInt32Value11.toBuilder() : null;
                            UInt32Value uInt32Value12 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.successRateRequestVolume_ = uInt32Value12;
                            if (builder8 != null) {
                                builder8.g0(uInt32Value12);
                                this.successRateRequestVolume_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 74:
                            UInt32Value uInt32Value13 = this.successRateStdevFactor_;
                            UInt32Value.b builder9 = uInt32Value13 != null ? uInt32Value13.toBuilder() : null;
                            UInt32Value uInt32Value14 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.successRateStdevFactor_ = uInt32Value14;
                            if (builder9 != null) {
                                builder9.g0(uInt32Value14);
                                this.successRateStdevFactor_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 82:
                            UInt32Value uInt32Value15 = this.consecutiveGatewayFailure_;
                            UInt32Value.b builder10 = uInt32Value15 != null ? uInt32Value15.toBuilder() : null;
                            UInt32Value uInt32Value16 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.consecutiveGatewayFailure_ = uInt32Value16;
                            if (builder10 != null) {
                                builder10.g0(uInt32Value16);
                                this.consecutiveGatewayFailure_ = builder10.I();
                            } else {
                                continue;
                            }
                        case 90:
                            UInt32Value uInt32Value17 = this.enforcingConsecutiveGatewayFailure_;
                            UInt32Value.b builder11 = uInt32Value17 != null ? uInt32Value17.toBuilder() : null;
                            UInt32Value uInt32Value18 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingConsecutiveGatewayFailure_ = uInt32Value18;
                            if (builder11 != null) {
                                builder11.g0(uInt32Value18);
                                this.enforcingConsecutiveGatewayFailure_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 96:
                            this.splitExternalLocalOriginErrors_ = pVar.r();
                            continue;
                        case 106:
                            UInt32Value uInt32Value19 = this.consecutiveLocalOriginFailure_;
                            UInt32Value.b builder12 = uInt32Value19 != null ? uInt32Value19.toBuilder() : null;
                            UInt32Value uInt32Value20 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.consecutiveLocalOriginFailure_ = uInt32Value20;
                            if (builder12 != null) {
                                builder12.g0(uInt32Value20);
                                this.consecutiveLocalOriginFailure_ = builder12.I();
                            } else {
                                continue;
                            }
                        case 114:
                            UInt32Value uInt32Value21 = this.enforcingConsecutiveLocalOriginFailure_;
                            UInt32Value.b builder13 = uInt32Value21 != null ? uInt32Value21.toBuilder() : null;
                            UInt32Value uInt32Value22 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingConsecutiveLocalOriginFailure_ = uInt32Value22;
                            if (builder13 != null) {
                                builder13.g0(uInt32Value22);
                                this.enforcingConsecutiveLocalOriginFailure_ = builder13.I();
                            } else {
                                continue;
                            }
                        case 122:
                            UInt32Value uInt32Value23 = this.enforcingLocalOriginSuccessRate_;
                            UInt32Value.b builder14 = uInt32Value23 != null ? uInt32Value23.toBuilder() : null;
                            UInt32Value uInt32Value24 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingLocalOriginSuccessRate_ = uInt32Value24;
                            if (builder14 != null) {
                                builder14.g0(uInt32Value24);
                                this.enforcingLocalOriginSuccessRate_ = builder14.I();
                            } else {
                                continue;
                            }
                        case 130:
                            UInt32Value uInt32Value25 = this.failurePercentageThreshold_;
                            UInt32Value.b builder15 = uInt32Value25 != null ? uInt32Value25.toBuilder() : null;
                            UInt32Value uInt32Value26 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.failurePercentageThreshold_ = uInt32Value26;
                            if (builder15 != null) {
                                builder15.g0(uInt32Value26);
                                this.failurePercentageThreshold_ = builder15.I();
                            } else {
                                continue;
                            }
                        case 138:
                            UInt32Value uInt32Value27 = this.enforcingFailurePercentage_;
                            UInt32Value.b builder16 = uInt32Value27 != null ? uInt32Value27.toBuilder() : null;
                            UInt32Value uInt32Value28 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingFailurePercentage_ = uInt32Value28;
                            if (builder16 != null) {
                                builder16.g0(uInt32Value28);
                                this.enforcingFailurePercentage_ = builder16.I();
                            } else {
                                continue;
                            }
                        case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                            UInt32Value uInt32Value29 = this.enforcingFailurePercentageLocalOrigin_;
                            UInt32Value.b builder17 = uInt32Value29 != null ? uInt32Value29.toBuilder() : null;
                            UInt32Value uInt32Value30 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.enforcingFailurePercentageLocalOrigin_ = uInt32Value30;
                            if (builder17 != null) {
                                builder17.g0(uInt32Value30);
                                this.enforcingFailurePercentageLocalOrigin_ = builder17.I();
                            } else {
                                continue;
                            }
                        case 154:
                            UInt32Value uInt32Value31 = this.failurePercentageMinimumHosts_;
                            UInt32Value.b builder18 = uInt32Value31 != null ? uInt32Value31.toBuilder() : null;
                            UInt32Value uInt32Value32 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.failurePercentageMinimumHosts_ = uInt32Value32;
                            if (builder18 != null) {
                                builder18.g0(uInt32Value32);
                                this.failurePercentageMinimumHosts_ = builder18.I();
                            } else {
                                continue;
                            }
                        case 162:
                            UInt32Value uInt32Value33 = this.failurePercentageRequestVolume_;
                            UInt32Value.b builder19 = uInt32Value33 != null ? uInt32Value33.toBuilder() : null;
                            UInt32Value uInt32Value34 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.failurePercentageRequestVolume_ = uInt32Value34;
                            if (builder19 != null) {
                                builder19.g0(uInt32Value34);
                                this.failurePercentageRequestVolume_ = builder19.I();
                            } else {
                                continue;
                            }
                        case 170:
                            Duration duration5 = this.maxEjectionTime_;
                            Duration.b builder20 = duration5 != null ? duration5.toBuilder() : null;
                            Duration duration6 = (Duration) pVar.B(Duration.parser(), f0Var);
                            this.maxEjectionTime_ = duration6;
                            if (builder20 != null) {
                                builder20.e0(duration6);
                                this.maxEjectionTime_ = builder20.I();
                            } else {
                                continue;
                            }
                        default:
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static OutlierDetection parseFrom(InputStream inputStream) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static OutlierDetection parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static OutlierDetection parseFrom(p pVar) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static OutlierDetection parseFrom(p pVar, f0 f0Var) throws IOException {
        return (OutlierDetection) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
