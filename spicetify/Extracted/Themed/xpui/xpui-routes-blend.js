"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[8123],{29605:(e,t,i)=>{i.d(t,{l:()=>h});var n=i(51697),l=i(98484),a=i(26790),o=i(10330),s=i(24815),r=i(4637);const d={[a.Uo.MEDIUM]:"alto",[a.Uo.LARGE]:"alto",[a.Uo.XLARGE]:"forte"},c={[a.Uo.LARGE]:"ballad",[a.Uo.XLARGE]:"cello"},u={[a.Uo.LARGE]:"viola",[a.Uo.XLARGE]:"viola"},h=({title:e,subtitle:t,body:i,footnote:h,buttonText:b,callToActionClicked:m})=>{const x=(0,a.jh)(),g=x&&d[x]||"canon",v=x&&c[x]||"mesto",E=x&&u[x]||"finale";return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.D,{as:"h1",variant:g,semanticColor:"textBase",className:s.Z.title,children:e}),(0,r.jsx)(n.D,{as:"h2",variant:v,semanticColor:"textSubdued",className:s.Z.subtitle,children:t}),i,m&&(0,r.jsx)(l.D,{className:s.Z.button,colorSet:"invertedLight",onClick:m,"data-testid":o.xd,children:b}),h&&(0,r.jsx)(n.D,{as:"p",variant:E,semanticColor:"textSubdued",className:s.Z.note,children:h})]})}},10859:(e,t,i)=>{i.d(t,{H:()=>p});var n=i(84875),l=i.n(n),a=i(30099),o=i(3441),s=i(70304),r=i(26790),d=i(29605),c=i(10330);const u="NTT5CathoDEMjrmgfv9y",h="WmmNhmwHDNvDxInfukYO";var b=i(4637);const m=e=>(0,b.jsx)("div",{className:u,children:(0,b.jsx)("div",{className:h,children:(0,b.jsx)("svg",{width:e.iconSize,height:e.iconSize,fill:"currentColor",viewBox:"0 0 64 64",xmlns:"http://www.w3.org/2000/svg",children:(0,b.jsx)("path",{d:"M33 31.998v-23h-2v23H8v2h23v23h2v-23h23v-2z"})})})});var x=i(24815);const g={name:"",username:"",image_url:null,hash:""},v={[r.Uo.MEDIUM]:164,[r.Uo.LARGE]:164,[r.Uo.XLARGE]:270},E=(e,t)=>(0,b.jsx)(o.q,{label:a.ag.get("web-player.blend.invite.button-title"),images:[],width:e,userIconSize:t,customPlaceholder:(0,b.jsx)(m,{iconSize:t}),piled:!0}),p=({invitation:e,callToActionClicked:t,breakpointEltRef:i})=>{const n=!!e.members?.length,u=n&&e.members?.[0]||e.recipient||g,h=n&&e.recipient||null,m=(0,r.jh)(),p=m&&v[m]||128,j=Math.round(.475*p);return(0,b.jsxs)("div",{className:l()(x.Z.container,x.Z.TwoUsers),"data-testid":c.xS,ref:i,children:[(0,b.jsx)(s.$,{children:a.ag.get("blend.invite.page-title")}),(0,b.jsxs)("div",{className:x.Z.facepile,children:[(0,b.jsx)(o.q,{label:u.name,images:[{url:u.image_url??"",width:p,height:p}],width:p,userIconSize:j}),h?(0,b.jsx)(o.q,{label:h.name,images:[{url:h.image_url??"",width:p,height:p}],width:p,userIconSize:j,piled:!0}):E(p,j)]}),(0,b.jsx)(d.l,{title:e.title,subtitle:e.subtitle,footnote:e.footnote,buttonText:e.button_text,callToActionClicked:t})]})}},10330:(e,t,i)=>{i.d(t,{Eh:()=>o,ab:()=>a,e0:()=>n,xS:()=>l,xd:()=>s});const n="blend-deleted-container",l="blend-two-user-container",a="blend-multi-user-container",o="blend-full-container",s="blend-cta-button"},80437:(e,t,i)=>{i.d(t,{Z:()=>n});const n=()=>{const e=window.location.href;return window.location.href=`https://accounts.spotify.com/login?continue=${encodeURIComponent(e)}`,null}},45006:(e,t,i)=>{i.d(t,{Ag:()=>s,V3:()=>l,nW:()=>o,oN:()=>a});var n=i(74021);let l=function(e){return e.PENDING_INVITATION="PENDING_INVITATION",e.READY_TO_JOIN_EMPTY_BLEND="READY_TO_JOIN_EMPTY_BLEND",e.READY_TO_JOIN_ALREADY_CREATED_BLEND="READY_TO_JOIN_ALREADY_CREATED_BLEND",e.MAX_MEMBERS="MAX_MEMBERS",e.ALREADY_JOINED="ALREADY_JOINED",e.DELETED="DELETED",e}({});const a=(e,t)=>e.build().withHost(n.cM).withPath(`/v3/view-invitation/${encodeURIComponent(t)}`).withEndpointIdentifier("v3/view-invitation/{invitationId}").withLocale(e.locale).send(),o=(e,t)=>e.build().withHost(n.cM).withMethod("PUT").withPath(`/v2/join/${encodeURIComponent(t)}`).withEndpointIdentifier("join/{invitationId}").send(),s=e=>e.build().withHost(n.cM).withMethod("POST").withPath("/v1/generate").withEndpointIdentifier("v1/generate").send()},10973:(e,t,i)=>{i.d(t,{j:()=>a});var n=i(91366),l=i(95906);const a=()=>(0,l.D)({[n.U.SMALL]:536,[n.U.MEDIUM]:792,[n.U.LARGE]:1048,[n.U.XLARGE]:1688})},16555:(e,t,i)=>{i.d(t,{i:()=>u});var n=i(59496),l=i(83792),a=i(30099),o=i(90326),s=i(56529),r=i(77863),d=i(7554),c=i(45006);function u(e,t){const{user:i}=(0,l.v9)(d.Gg),u=(0,r.k)(),h=(0,n.useCallback)((async()=>{const e=await(0,c.Ag)(o.b.getInstance()),t=e.body?.invite;if(!t)throw new Error("unable to generate invite link");return i?.display_name?a.ag.get("blend.invite.body-with-name",i.display_name,e.body?.invite):a.ag.get("blend.invite.body-without-name",e.body?.invite)}),[i?.display_name]);return async()=>{try{await(0,s.v)(h()),u(a.ag.get("feedback.link-copied"))}catch{u(a.ag.get("error.generic"))}if(e&&t){const i=e.inviteButtonFactory().hitCopyToClipboard();t.logInteraction(i)}}}},10487:(e,t,i)=>{i.r(t),i.d(t,{default:()=>j});var n=i(59496),l=i(83792),a=i(86893),o=i(30099),s=i(70304),r=i(7554),d=i(26790),c=i(34046),u=i(75804),h=i(34997),b=i(45006),m=i(10973),x=i(16555),g=i(10859),v=i(80437),E=i(4637);const p={page_type:b.V3.PENDING_INVITATION,get title(){return o.ag.get("web-player.blend.group-invite.header")},get subtitle(){return o.ag.get("web-player.blend.duo-invite.description")},get button_text(){return o.ag.get("web-player.blend.invite.button-title")},footnote:null,members:[],recipient:null,members_title:null,playlist_uri:null},j=()=>{const{spec:e,logger:t}=(0,c.fU)(a.L,{}),i=(0,x.i)(e,t),{ref:b,breakpoint:j}=(0,m.j)(),{user:w}=(0,l.v9)(r.Gg),f=w?.uri?(0,u.C)(w?.uri):"",y=(e=>({...p,members:[e],footnote:o.ag.get("web-player.blend.group-invite.warning")}))({name:w?.display_name||"",username:f,image_url:(0,h.X)(w?.images)?.url||null,hash:""});return w?(0,E.jsxs)(n.Suspense,{fallback:null,children:[(0,E.jsx)(s.$,{children:o.ag.get("web-player.blend.invite.page-title")}),(0,E.jsx)(d.ZU.Provider,{value:j,children:(0,E.jsx)(g.H,{invitation:y,callToActionClicked:i,breakpointEltRef:b})})]}):(0,E.jsx)(v.Z,{})}},4245:(e,t,i)=>{i.r(t),i.d(t,{default:()=>H});var n=i(59496),l=i(83792),a=i(97601),o=i(7554),s=i(79546),r=i(9990),d=i(86893),c=i(14887),u=i(30099),h=i(10896),b=i(47948),m=i(26790),x=i(34046),g=i(87873),v=i(29605),E=i(10330),p=i(24815),j=i(4637);const w=({invitation:e,callToActionClicked:t,breakpointEltRef:i})=>(0,j.jsxs)("div",{className:p.Z.container,"data-testid":E.Eh,ref:i,children:[(0,j.jsx)(g.Z,{iconSize:64}),(0,j.jsx)(v.l,{title:e.title,subtitle:e.subtitle,buttonText:e.button_text,footnote:null,callToActionClicked:t})]});var f=i(70304),y=i(84875),_=i.n(y),I=i(51697),A=i(3441),N=i(70231),T=i(18858),D=i(67490);const k="HKAYWYmxd5Ie8WSi0a4y",R="i52u_T3b50wraodIaORk",U="xakiNVMlUf6geF67FEgy",L="IRhTesoeIiwswlly0Dvg",C="LNJzE17iskXWmfKAzY4U",M="qzBr7X7cdLUhWdk0r8lL",O=({uri:e,imageUrl:t,name:i})=>(0,j.jsx)("li",{children:(0,j.jsx)(N._,{menu:(0,j.jsx)(T.I,{uri:e}),children:(0,j.jsx)(D.Link,{to:e,children:(0,j.jsxs)("div",{className:L,children:[(0,j.jsx)(A.q,{images:[{url:t,width:null,height:null}],label:i,width:32,userIconSize:24,className:C}),(0,j.jsx)(I.D,{variant:"violaBold",className:"standalone-ellipsis-one-line",semanticColor:"textBase",children:i})]})})})}),S=({members:e,headingText:t,className:i})=>(0,j.jsxs)("div",{className:_()(k,i),children:[(0,j.jsx)("div",{children:(0,j.jsx)(I.D,{as:"h4",variant:"minuetBold",semanticColor:"textSubdued",className:R,children:t})}),(0,j.jsx)("ul",{className:U,children:e&&e.map((e=>(0,j.jsx)(O,{imageUrl:e.image_url||"",name:e.name,uri:(0,c.QK)(e.username).toURI()},e.username)))}),(0,j.jsx)("div",{className:M})]}),Z=({invitation:e,callToActionClicked:t,breakpointEltRef:i})=>{const n=e.members||[],l=(0,j.jsx)("div",{className:p.Z.userListContainer,"data-testid":E.ab,children:(0,j.jsx)(S,{className:p.Z.userList,headingText:e.members_title,members:n})});return(0,j.jsxs)("div",{className:p.Z.container,ref:i,children:[(0,j.jsx)(f.$,{children:u.ag.get("blend.join.title")}),(0,j.jsx)(v.l,{title:e.title,subtitle:e.subtitle,footnote:e.footnote,body:l,buttonText:e.button_text,callToActionClicked:t})]})};var P=i(10859),Y=i(75132),B=i(45006),V=i(10973),G=i(16555),z=i(90326),X=i(77863);const J=({invitationId:e})=>{const t=(0,a.s0)(),i=(0,r.W6)(b.c$b),{data:l,error:o,loading:g}=(0,h.J)(B.oN,[e]),{spec:f,logger:y}=(0,x.fU)(d.L,{}),_=(0,G.i)(f,y),I=function(e,t,i){const n=(0,X.k)(),l=(0,a.s0)();return async()=>{try{const t=await(0,B.nW)(z.b.getInstance(),e),i=(0,c.EC)(t?.body.playlist_uri).toURLPath(!0);if(!i)throw new Error("unable to join");l(i,{replace:!0})}catch{n(u.ag.get("error.request-playlist-failure"))}if(t&&i){const e=t.joinButtonFactory().hitCreatePlaylist();i.logInteraction(e)}}}(e,f,y),{ref:A,breakpoint:N}=(0,V.j)();(0,n.useEffect)((()=>{if(l?.body.page_type===B.V3.ALREADY_JOINED){const e=(0,c.EC)(l?.body.playlist_uri)?.toURLPath(!0);e&&t(e,{replace:!0})}}),[l?.body.page_type,l?.body.playlist_uri,t]);const T=null===l||!l.body;if(T||g||o)return(0,j.jsx)(Y.h,{timeoutInMs:1e3,hasError:!!o||!g&&T,errorMessage:u.ag.get("error.generic")});const D=l?.body.members?.length||0,k=i===b.rS8.TWO_USER;switch(l?.body.page_type){case B.V3.DELETED:return(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsxs)("div",{className:p.Z.container,ref:A,"data-testid":E.e0,children:[(0,j.jsx)(s.F,{iconSize:64}),(0,j.jsx)(v.l,{title:l.body.title,subtitle:l.body.subtitle,buttonText:l.body.button_text,footnote:l.body.footnote,callToActionClicked:_})]})});case B.V3.ALREADY_JOINED:return(0,j.jsx)(Y.h,{hasError:!1,errorMessage:u.ag.get("error.request-playlist-failure")});case B.V3.READY_TO_JOIN_EMPTY_BLEND:return(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsx)(P.H,{invitation:l.body,breakpointEltRef:A,callToActionClicked:I})});case B.V3.READY_TO_JOIN_ALREADY_CREATED_BLEND:return k&&D>=2?(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsx)(w,{invitation:{...l.body,title:u.ag.get("blend.link-invialid.header"),subtitle:u.ag.get("blend.link-invalid.subtitle"),button_text:u.ag.get("blend.invite.button-title")},callToActionClicked:_,breakpointEltRef:A})}):(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsx)(Z,{invitation:l.body,callToActionClicked:I,breakpointEltRef:A})});case B.V3.MAX_MEMBERS:return(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsx)(w,{invitation:l.body,callToActionClicked:_,breakpointEltRef:A})});case B.V3.PENDING_INVITATION:return(0,j.jsx)(m.ZU.Provider,{value:N,children:(0,j.jsx)(P.H,{invitation:l.body,callToActionClicked:_,breakpointEltRef:A})});default:return(0,j.jsx)(Y.h,{timeoutInMs:1e3,hasError:!0,errorMessage:u.ag.get("error.generic")})}};var W=i(80437);const q=({invitationId:e})=>{const{user:t}=(0,l.v9)(o.Gg);return t?(0,j.jsx)(n.Suspense,{fallback:null,children:(0,j.jsx)(J,{invitationId:e})}):(0,j.jsx)(W.Z,{})},H=(0,n.memo)((()=>{const{invitationId:e=""}=(0,a.UO)();return(0,j.jsx)(q,{invitationId:e})}))},24815:(e,t,i)=>{i.d(t,{Z:()=>n});const n={xs:"(min-width: 0px)",xsOnly:"(min-width: 0px) and (max-width: 767px)",sm:"(min-width: 768px)",smOnly:"(min-width: 768px) and (max-width: 1023px)",md:"(min-width: 1024px)",mdOnly:"(min-width: 1024px) and (max-width: 1279px)",lg:"(min-width: 1280px)",lgOnly:"(min-width: 1280px) and (max-width: 1919px)",xl:"(min-width: 1920px)",container:"yMoj4jXSudxZ6BkKxV2E",TwoUsers:"IDgUCqAbkRah6OFywv1q",subtitle:"qmKxO5qV4XmVYfpFpaDA",facepile:"nWMdWl40O8K7HQT8Tagc",title:"csRAeNipsu1camQTMiIU",button:"nxFBywAeAI8Zk2fav3Yj",userList:"lxPLQIPb1VSV3VL18Ke3",userListContainer:"BzMKhmywgyIt6IUjcTGW",note:"DSdKNusLgsMX_iicYCU2"}}}]);
//# sourceMappingURL=xpui-routes-blend.js.map