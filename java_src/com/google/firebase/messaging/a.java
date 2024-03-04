package com.google.firebase.messaging;

import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.guochao.faceshow.utils.BaseConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class a implements e6.a {

    /* renamed from: a  reason: collision with root package name */
    public static final e6.a f14011a = new a();

    /* renamed from: com.google.firebase.messaging.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0139a implements d6.c<MessagingClientEvent> {

        /* renamed from: a  reason: collision with root package name */
        static final C0139a f14012a = new C0139a();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f14013b = d6.b.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final d6.b f14014c = d6.b.a("messageId").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final d6.b f14015d = d6.b.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final d6.b f14016e = d6.b.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        /* renamed from: f  reason: collision with root package name */
        private static final d6.b f14017f = d6.b.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();

        /* renamed from: g  reason: collision with root package name */
        private static final d6.b f14018g = d6.b.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();

        /* renamed from: h  reason: collision with root package name */
        private static final d6.b f14019h = d6.b.a(RemoteMessageConst.COLLAPSE_KEY).b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();

        /* renamed from: i  reason: collision with root package name */
        private static final d6.b f14020i = d6.b.a(RemoteMessageConst.Notification.PRIORITY).b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();

        /* renamed from: j  reason: collision with root package name */
        private static final d6.b f14021j = d6.b.a(RemoteMessageConst.TTL).b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();

        /* renamed from: k  reason: collision with root package name */
        private static final d6.b f14022k = d6.b.a(BaseConfig.DB_TYPE_TOPIC_NAME).b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();

        /* renamed from: l  reason: collision with root package name */
        private static final d6.b f14023l = d6.b.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();

        /* renamed from: m  reason: collision with root package name */
        private static final d6.b f14024m = d6.b.a("event").b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();

        /* renamed from: n  reason: collision with root package name */
        private static final d6.b f14025n = d6.b.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();

        /* renamed from: o  reason: collision with root package name */
        private static final d6.b f14026o = d6.b.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();

        /* renamed from: p  reason: collision with root package name */
        private static final d6.b f14027p = d6.b.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        private C0139a() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(MessagingClientEvent messagingClientEvent, d6.d dVar) throws IOException {
            dVar.b(f14013b, messagingClientEvent.l());
            dVar.d(f14014c, messagingClientEvent.h());
            dVar.d(f14015d, messagingClientEvent.g());
            dVar.d(f14016e, messagingClientEvent.i());
            dVar.d(f14017f, messagingClientEvent.m());
            dVar.d(f14018g, messagingClientEvent.j());
            dVar.d(f14019h, messagingClientEvent.d());
            dVar.c(f14020i, messagingClientEvent.k());
            dVar.c(f14021j, messagingClientEvent.o());
            dVar.d(f14022k, messagingClientEvent.n());
            dVar.b(f14023l, messagingClientEvent.b());
            dVar.d(f14024m, messagingClientEvent.f());
            dVar.d(f14025n, messagingClientEvent.a());
            dVar.b(f14026o, messagingClientEvent.c());
            dVar.d(f14027p, messagingClientEvent.e());
        }
    }

    /* loaded from: classes2.dex */
    private static final class b implements d6.c<q6.a> {

        /* renamed from: a  reason: collision with root package name */
        static final b f14028a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f14029b = d6.b.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(q6.a aVar, d6.d dVar) throws IOException {
            dVar.d(f14029b, aVar.a());
        }
    }

    /* loaded from: classes2.dex */
    private static final class c implements d6.c<g0> {

        /* renamed from: a  reason: collision with root package name */
        static final c f14030a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final d6.b f14031b = d6.b.d("messagingClientEventExtension");

        private c() {
        }

        @Override // d6.c
        /* renamed from: b */
        public void a(g0 g0Var, d6.d dVar) throws IOException {
            dVar.d(f14031b, g0Var.b());
        }
    }

    private a() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        bVar.a(g0.class, c.f14030a);
        bVar.a(q6.a.class, b.f14028a);
        bVar.a(MessagingClientEvent.class, C0139a.f14012a);
    }
}
